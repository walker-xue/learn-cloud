package com.donkeycode.data.service;

import com.donkeycode.boot.IBaseService;
import com.donkeycode.core.page.PageFilter;
import com.donkeycode.core.page.PageResult;
import com.donkeycode.data.entity.BaseApp;
import com.donkeycode.security.CloudClientDetails;

/**
 * 应用信息管理
 *
 * @author liuyadu
 */
public interface BaseAppService extends IBaseService<BaseApp> {

    /**
     * 查询应用列表
     *
     * @param filter
     * @return
     */
    PageResult<BaseApp> findListPage(PageFilter filter);

    /**
     * 获取app信息
     *
     * @param appId
     * @return
     */
    BaseApp getAppInfo(String appId);

    /**
     * 获取app和应用信息
     *
     * @param clientId
     * @return
     */
    CloudClientDetails getAppClientInfo(String clientId);

    /**
     * 更新应用开发新型
     *
     * @param client
     */
    void updateAppClientInfo(CloudClientDetails client);

    /**
     * 添加应用
     *
     * @param app
     *     应用
     * @return 应用信息
     */
    BaseApp addAppInfo(BaseApp app);

    /**
     * 修改应用
     *
     * @param app
     *     应用
     * @return 应用信息
     */
    BaseApp updateInfo(BaseApp app);

    /**
     * 重置秘钥
     *
     * @param appId
     * @return
     */
    String restSecret(String appId);

    /**
     * 删除应用
     *
     * @param appId
     * @return
     */
    void removeApp(String appId);
}
