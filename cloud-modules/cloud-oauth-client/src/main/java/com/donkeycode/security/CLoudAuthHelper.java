package com.donkeycode.security;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.OAuth2Request;
import org.springframework.security.oauth2.provider.token.DefaultAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.RemoteTokenServices;
import org.springframework.security.oauth2.provider.token.ResourceServerTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;
import org.springframework.util.Assert;

import com.donkeycode.configuration.OpenCommonProperties;
import com.donkeycode.core.utils.BeanConvertUtils;
import com.donkeycode.core.utils.ReflectionUtils;


import lombok.extern.slf4j.Slf4j;

/**
 * 认证信息帮助类
 *
 * @author liuyadu
 */
@Slf4j
public class CLoudAuthHelper {

    /**
     * 获取当前 Context 环境中的认证用户信息
     *
     * @return
     */
    public static CloudUserDetails getUser() {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (null == authentication) {
            return null;
        }
        if (!authentication.isAuthenticated()) {
            return null;
        }

        if (authentication instanceof OAuth2Authentication) {

            OAuth2Authentication oAuth2Authentication = (OAuth2Authentication) authentication;

            OAuth2Request auth2Request = oAuth2Authentication.getOAuth2Request();

            if (!oAuth2Authentication.isClientOnly()) {

                if (authentication.getPrincipal() instanceof CloudUserDetails) {
                    return (CloudUserDetails) authentication.getPrincipal();
                }
                if (authentication.getPrincipal() instanceof Map) {
                    return BeanConvertUtils.mapToObject((Map) authentication.getPrincipal(), new CloudUserDetails());
                }
            }

            CloudUserDetails userDetails = new CloudUserDetails();
            userDetails.setClientId(auth2Request.getClientId());
            userDetails.setAuthorities(auth2Request.getAuthorities());
            return userDetails;

        }
        return null;
    }

    /**
     * 更新OpenUser
     *
     * @param openUser
     */
    public static void updateOpenUser(TokenStore tokenStore, CloudUserDetails openUser) {

        if (openUser == null) {
            return;
        }
        Assert.notNull(openUser.getClientId(), "客户端ID不能为空");
        Assert.notNull(openUser.getUsername(), "用户名不能为空");
        // 动态更新客户端生成的token
        Collection<OAuth2AccessToken> accessTokens = tokenStore.findTokensByClientIdAndUserName(openUser.getClientId(), openUser.getUsername());

        if (accessTokens == null && accessTokens.isEmpty()) {
            return;
        }

        for (OAuth2AccessToken accessToken : accessTokens) {
            // 由于没有set方法,使用反射机制强制赋值
            OAuth2Authentication oAuth2Authentication = tokenStore.readAuthentication(accessToken);
            if (oAuth2Authentication != null) {
                Authentication authentication = oAuth2Authentication.getUserAuthentication();

                ReflectionUtils.setFieldValue(authentication, "principal", openUser);
                // 重新保存
                tokenStore.storeAccessToken(accessToken, oAuth2Authentication);
            }
        }
    }

    /***
     * 更新客户端权限
     * @param tokenStore
     * @param clientId
     * @param authorities
     */
    public static void updateOpenClientAuthorities(TokenStore tokenStore, String clientId, Collection<? extends GrantedAuthority> authorities) {
        if (authorities == null) {
            return;
        }
        // 动态更新客户端生成的token
        Collection<OAuth2AccessToken> accessTokens = tokenStore.findTokensByClientId(clientId);
        if (accessTokens != null && !accessTokens.isEmpty()) {
            Iterator<OAuth2AccessToken> iterator = accessTokens.iterator();
            while (iterator.hasNext()) {
                OAuth2AccessToken token = iterator.next();
                OAuth2Authentication oAuth2Authentication = tokenStore.readAuthentication(token);
                if (oAuth2Authentication != null && oAuth2Authentication.isClientOnly()) {
                    // 只更新客户端权限
                    // 由于没有set方法,使用反射机制强制赋值
                    ReflectionUtils.setFieldValue(oAuth2Authentication, "authorities", authorities);
                    // 重新保存
                    tokenStore.storeAccessToken(token, oAuth2Authentication);
                }
            }
        }
    }

    /**
     * 获取认证用户Id
     *
     * @return
     */
    public static String getUserId() {
        return getUser().getUserId();
    }

    /**
     * 是否拥有权限
     *
     * @param authority
     * @return
     */
    public static Boolean hasAuthority(String authority) {
        CloudUserDetails auth = getUser();
        if (auth == null) {
            return false;
        }
        if (AuthorityUtils.authorityListToSet(auth.getAuthorities()).contains(authority)) {
            return true;
        }
        return false;
    }

    /**
     * 构建token转换器
     *
     * @return
     */
    public static DefaultAccessTokenConverter buildAccessTokenConverter() {
        CloudUserDetailsConverter userAuthenticationConverter = new CloudUserDetailsConverter();
        DefaultAccessTokenConverter accessTokenConverter = new DefaultAccessTokenConverter();
        accessTokenConverter.setUserTokenConverter(userAuthenticationConverter);
        return accessTokenConverter;
    }

    /**
     * 构建jwtToken转换器
     *
     * @param properties
     * @return
     */
    public static JwtAccessTokenConverter buildJwtTokenEnhancer(OpenCommonProperties properties) throws Exception {
        JwtAccessTokenConverter converter = new OpenJwtAccessTokenEnhancer();
        converter.setSigningKey(properties.getJwtSigningKey());
        converter.afterPropertiesSet();
        return converter;
    }

    /**
     * 构建自定义远程Token服务类
     *
     * @param properties
     * @return
     */
    public static RemoteTokenServices buildRemoteTokenServices(OpenCommonProperties properties) {
        // 使用自定义系统用户凭证转换器
        DefaultAccessTokenConverter accessTokenConverter = buildAccessTokenConverter();
        RemoteTokenServices tokenServices = new RemoteTokenServices();
        tokenServices.setCheckTokenEndpointUrl(properties.getTokenInfoUri());
        tokenServices.setClientId(properties.getClientId());
        tokenServices.setClientSecret(properties.getClientSecret());
        tokenServices.setAccessTokenConverter(accessTokenConverter);
        log.info("buildRemoteTokenServices[{}]", tokenServices);
        return tokenServices;
    }

    /**
     * 构建资源服务器JwtToken服务类
     *
     * @param properties
     * @return
     */
    public static ResourceServerTokenServices buildJwtTokenServices(OpenCommonProperties properties) throws Exception {
        // 使用自定义系统用户凭证转换器
        DefaultAccessTokenConverter accessTokenConverter = buildAccessTokenConverter();
        OpenJwtTokenService tokenServices = new OpenJwtTokenService();
        // 这里的签名key 保持和认证中心一致
        JwtAccessTokenConverter converter = buildJwtTokenEnhancer(properties);
        JwtTokenStore jwtTokenStore = new JwtTokenStore(converter);
        tokenServices.setTokenStore(jwtTokenStore);
        tokenServices.setJwtAccessTokenConverter(converter);
        tokenServices.setDefaultAccessTokenConverter(accessTokenConverter);
        log.info("buildJwtTokenServices[{}]", tokenServices);
        return tokenServices;
    }

    /**
     * 构建资源服务器RedisToken服务类
     *
     * @return
     */
    public static ResourceServerTokenServices buildRedisTokenServices(RedisConnectionFactory redisConnectionFactory) {
        // 这里的签名key 保持和认证中心一致
        RedisTokenStore redisTokenStore = new RedisTokenStore(redisConnectionFactory);

        RedisTokenStoreService tokenServices = new RedisTokenStoreService(redisTokenStore);
        log.info("buildRedisTokenServices[{}]", tokenServices);
        return tokenServices;
    }
}
