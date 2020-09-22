package com.donkeycode.data.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.boot.BaseService;
import com.donkeycode.core.collectors.CollectorUtils;
import com.donkeycode.core.date.DateUtils;
import com.donkeycode.core.page.PageFilter;
import com.donkeycode.core.page.PageResult;
import com.donkeycode.core.utils.BeanConvertUtils;
import com.donkeycode.data.entity.BaseApp;
import com.donkeycode.data.mapper.BaseAppMapper;
import com.donkeycode.data.service.BaseAppService;
import com.donkeycode.security.CloudClientDetails;
import com.donkeycode.security.exception.OpenAlertException;

import lombok.extern.slf4j.Slf4j;
import tk.mybatis.mapper.weekend.Weekend;
import tk.mybatis.mapper.weekend.WeekendCriteria;

/**
 * @author: liuyadu
 * @date: 2018/11/12 16:26
 * @description:
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class BaseAppServiceImpl extends BaseService<BaseApp> implements BaseAppService {

    @Autowired
    BaseAppMapper baseAppMapper;

    @Autowired
    JdbcClientDetailsService jdbcClientDetailsService;
    /**
     * token有效期，默认12小时
     */
    public static final int ACCESS_TOKEN_VALIDITY_SECONDS = 60 * 60 * 12;
    /**
     * token有效期，默认7天
     */
    public static final int REFRESH_TOKEN_VALIDITY_SECONDS = 60 * 60 * 24 * 7;

    /**
     * 查询应用列表
     *
     * @param filter
     * @return
     */
    @Override
    public PageResult<BaseApp> findListPage(PageFilter filter) {
        BaseApp queryParam = filter.paramsToObject(BaseApp.class);

        Weekend<BaseApp> weekend = new Weekend<>(BaseApp.class);
        WeekendCriteria<BaseApp, Object> criteria = weekend.weekendCriteria();
        if (CollectorUtils.isNotEmpty(filter.getParams())) {
            if (StringUtils.isNotBlank(queryParam.getDeveloperId())) {
                criteria.andLike(BaseApp::getDeveloperId, "%" + queryParam.getDeveloperId() + "%");
            }
            if (StringUtils.isNotBlank(queryParam.getAppType())) {
                criteria.andEqualTo(BaseApp::getAppType, "%" + queryParam.getAppType() + "%");
            }
            if (StringUtils.isNotBlank(queryParam.getAppName())) {
                criteria.andLike(BaseApp::getAppName, "%" + queryParam.getAppName() + "%");
            }
            if (StringUtils.isNotBlank(queryParam.getAppNameEn())) {
                criteria.andLike(BaseApp::getAppNameEn, "%" + queryParam.getAppNameEn() + "%");
            }
        }

        return null;
    }

    /**
     * 获取app详情
     *
     * @param appId
     * @return
     */
    @Cacheable(value = "apps", key = "#appId")
    @Override
    public BaseApp getAppInfo(String appId) {
        return selectByKey(appId);
    }

    /**
     * 获取app和应用信息
     *
     * @return
     */
    @Override
    @Cacheable(value = "apps", key = "'client:'+#clientId")
    public CloudClientDetails getAppClientInfo(String clientId) {
        BaseClientDetails baseClientDetails = null;
        try {
            baseClientDetails = (BaseClientDetails) jdbcClientDetailsService.loadClientByClientId(clientId);
        } catch (Exception e) {
            return null;
        }
        String appId = baseClientDetails.getAdditionalInformation().get("appId").toString();
        CloudClientDetails openClient = new CloudClientDetails();
        BeanUtils.copyProperties(baseClientDetails, openClient);
        openClient.setAuthorities(baseAuthorityService.findAuthorityByApp(appId));
        return openClient;
    }

    /**
     * 更新应用开发新型
     *
     * @param client
     */
    @CacheEvict(value = { "apps" }, key = "'client:'+#client.clientId")
    @Override
    public void updateAppClientInfo(CloudClientDetails client) {
        jdbcClientDetailsService.updateClientDetails(client);
    }

    /**
     * 添加应用
     *
     * @param app
     * @return 应用信息
     */
    @CachePut(value = "apps", key = "#app.appId")
    @Override
    public BaseApp addAppInfo(BaseApp app) {
        String appId = String.valueOf(System.currentTimeMillis());
        //        String apiKey = RandomValueUtils.randomAlphanumeric(24);
        String apiKey = "";
        //        String secretKey = RandomValueUtils.randomAlphanumeric(32);
        String secretKey = "";
        app.setAppId(appId);
        app.setApiKey(apiKey);
        app.setSecretKey(secretKey);
        app.setCreateTime(DateUtils.nowDate());
        app.setUpdateTime(app.getCreateTime());
        if (app.getIsPersist() == null) {
            app.setIsPersist(0);
        }
        baseAppMapper.insert(app);
        Map info = BeanConvertUtils.objectToMap(app);
        // 功能授权
        BaseClientDetails client = new BaseClientDetails();
        client.setClientId(app.getApiKey());
        client.setClientSecret(app.getSecretKey());
        client.setAdditionalInformation(info);
        client.setAuthorizedGrantTypes(Arrays.asList("authorization_code", "client_credentials", "implicit", "refresh_token"));
        client.setAccessTokenValiditySeconds(ACCESS_TOKEN_VALIDITY_SECONDS);
        client.setRefreshTokenValiditySeconds(REFRESH_TOKEN_VALIDITY_SECONDS);
        jdbcClientDetailsService.addClientDetails(client);
        return app;
    }

    /**
     * 修改应用
     *
     * @param app
     *     应用
     * @return 应用信息
     */
    @Caching(evict = {
        @CacheEvict(value = { "apps" }, key = "#app.appId"),
        @CacheEvict(value = { "apps" }, key = "'client:'+#app.appId")
    })
    @Override
    public BaseApp updateInfo(BaseApp app) {
        app.setUpdateTime(new Date());
        // baseAppMapper.updateById(app);
        // 修改客户端附加信息
        BaseApp appInfo = getAppInfo(app.getAppId());
        Map info = BeanConvertUtils.objectToMap(appInfo);
        BaseClientDetails client = (BaseClientDetails) jdbcClientDetailsService.loadClientByClientId(appInfo.getApiKey());
        client.setAdditionalInformation(info);
        jdbcClientDetailsService.updateClientDetails(client);
        return app;
    }

    /**
     * 重置秘钥
     *
     * @param appId
     * @return
     */
    @Override
    @Caching(evict = {
        @CacheEvict(value = { "apps" }, key = "#appId"),
        @CacheEvict(value = { "apps" }, key = "'client:'+#appId")
    })
    public String restSecret(String appId) {
        BaseApp appInfo = getAppInfo(appId);
        if (appInfo == null) {
            throw new OpenAlertException(appId + "应用不存在!");
        }
        // 生成新的密钥
        String secretKey = "";
        appInfo.setSecretKey(secretKey);
        appInfo.setUpdateTime(new Date());
        //        baseAppMapper.updateById(appInfo);
        jdbcClientDetailsService.updateClientSecret(appInfo.getApiKey(), secretKey);
        return secretKey;
    }

    /**
     * 删除应用
     *
     * @param appId
     * @return
     */
    @Caching(evict = {
        @CacheEvict(value = { "apps" }, key = "#appId"),
        @CacheEvict(value = { "apps" }, key = "'client:'+#appId")
    })
    @Override
    public void removeApp(String appId) {
        BaseApp appInfo = getAppInfo(appId);
        if (appInfo == null) {
            throw new OpenAlertException(appId + "应用不存在!");
        }
        jdbcClientDetailsService.removeClientDetails(appInfo.getApiKey());
    }
}
