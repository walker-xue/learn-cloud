package com.donkeycode.security;

import java.util.HashMap;
import java.util.Map;

import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancerChain;

/**
 * 自定义平台令牌增强器，并且加入到调用链中
 *
 * @author fp295
 * @date 2018/4/16
 * 自定义JwtAccessToken转换器
 */
public class CloudTokenEnhancerChain extends TokenEnhancerChain {

    /**
     * 生成增强后的token，里面包含了用户所属域
     *
     * @param accessToken
     *     　只包含了用户名
     * @param authentication
     *     　用户认证信息
     * @return
     */
    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
        DefaultOAuth2AccessToken oAuth2AccessToken = new DefaultOAuth2AccessToken(accessToken);
        final Map<String, Object> additionalInformations = new HashMap<>(8);
        if (!authentication.isClientOnly()) {
            if (authentication.getPrincipal() != null && authentication.getPrincipal() instanceof CloudUserDetails) {
                // 设置额外用户信息
                CloudUserDetails userDetails = ((CloudUserDetails) authentication.getPrincipal());

                additionalInformations.put(OpenSecurityConstants.OPEN_ID, userDetails.getUserId());
                additionalInformations.put(OpenSecurityConstants.DOMAIN, userDetails.getDomain());
            }
        }
        oAuth2AccessToken.setAdditionalInformation(additionalInformations);

        return super.enhance(oAuth2AccessToken, authentication);
    }
}
