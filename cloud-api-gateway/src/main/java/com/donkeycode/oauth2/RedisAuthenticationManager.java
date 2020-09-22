package com.donkeycode.oauth2;

import lombok.extern.slf4j.Slf4j;

import org.springframework.security.authentication.ReactiveAuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.server.resource.BearerTokenAuthenticationToken;

import com.donkeycode.core.consts.ErrorCode;

import reactor.core.publisher.Mono;

/**
 * Redis 认证管理
 *
 * @author walker
 */
@Slf4j
public class RedisAuthenticationManager implements ReactiveAuthenticationManager {

    private TokenStore tokenStore;

    public RedisAuthenticationManager(TokenStore tokenStore) {
        this.tokenStore = tokenStore;
        log.debug("Redis Authentication Manager init....");
    }

    @Override
    public Mono<Authentication> authenticate(Authentication authentication) {

        return Mono.justOrEmpty(authentication)
            .filter(a -> a instanceof BearerTokenAuthenticationToken)
            .cast(BearerTokenAuthenticationToken.class)
            .map(BearerTokenAuthenticationToken::getToken)
            .flatMap((token -> {
                OAuth2Authentication oAuth2Authentication = this.tokenStore.readAuthentication(token);
                if (oAuth2Authentication == null) {
                    return Mono.error(new InvalidTokenException(ErrorCode.INVALID_TOKEN.getMessage()));
                }
                return Mono.just(oAuth2Authentication);
            })).cast(Authentication.class);
    }
}
