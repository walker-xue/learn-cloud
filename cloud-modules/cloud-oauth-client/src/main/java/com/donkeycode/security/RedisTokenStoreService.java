package com.donkeycode.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.ResourceServerTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import lombok.extern.slf4j.Slf4j;

/**
 * 把 OAuth2 的访问令牌的凭证存储在 Redis 中，提高服务的吞吐量.
 *
 *
 * @author liuyadu
 *
 *
 * 资源服务器拿到token，默认只会含有用户名信息
 *
 * https://my.oschina.net/giegie/blog/3023768
 */
@Slf4j
public class RedisTokenStoreService implements ResourceServerTokenServices {

    @Autowired
    TokenStore tokenStore;

    public RedisTokenStoreService(TokenStore redisTokenStore) {
        this.tokenStore = redisTokenStore;
    }

    /**
     * 加载指定访问令牌的凭据。
     *
     * @param accessToken
     * @return
     * @throws AuthenticationException
     * @throws InvalidTokenException
     */
    @Override
    public OAuth2Authentication loadAuthentication(String accessToken) throws AuthenticationException, InvalidTokenException {
        OAuth2Authentication oAuth2Authentication = tokenStore.readAuthentication(accessToken);
        return oAuth2Authentication;
    }

    /**
     * 读取指定令牌的凭证
     *
     * @param accessToken
     * @return
     */
    @Override
    public OAuth2AccessToken readAccessToken(String accessToken) {
        return tokenStore.readAccessToken(accessToken);
    }
}
