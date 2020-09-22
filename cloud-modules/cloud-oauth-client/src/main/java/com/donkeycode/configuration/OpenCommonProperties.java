package com.donkeycode.configuration;

import org.springframework.boot.context.properties.ConfigurationProperties;

import com.donkeycode.core.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 自定义网关配置
 *
 * @author: liuyadu
 * @date: 2018/11/23 14:40
 * @description:
 */
@Getter
@Setter
@ConfigurationProperties(prefix = "opencloud.common")
public class OpenCommonProperties extends BaseEntity {

    /**
     * 网关客户端Id
     */
    private String clientId;
    /**
     * 网关客户端密钥
     */
    private String clientSecret;
    /**
     * 网关服务地址
     */
    private String apiServerAddr;

    /**
     * 平台认证服务地址
     */
    private String authServerAddr;

    /**
     * 后台部署地址
     */
    private String adminServerAddr;

    /**
     * 认证范围
     */
    private String scope;
    /**
     * 获取token
     */
    private String accessTokenUri;
    /**
     * 认证地址
     */
    private String userAuthorizationUri;
    /**
     * 获取token地址
     */
    private String tokenInfoUri;
    /**
     * 获取用户信息地址
     */
    private String userInfoUri;

    /**
     * jwt签名key
     */
    private String jwtSigningKey;
}
