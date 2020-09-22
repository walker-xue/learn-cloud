package com.donkeycode.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.autoconfigure.security.servlet.EndpointRequest;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.provider.authentication.BearerTokenExtractor;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.web.authentication.logout.CookieClearingLogoutHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.security.web.util.matcher.RequestMatcher;

import com.donkeycode.core.PermitAllUrl;
import com.donkeycode.core.utils.String3Utils;

import lombok.extern.slf4j.Slf4j;

/**
 * Oauth2资源服务器配置
 *
 * @author walker
 */
@Slf4j
@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

    @Autowired
    TokenStore tokenStore;

    BearerTokenExtractor tokenExtractor = new BearerTokenExtractor();

    public void configure(HttpSecurity http) throws Exception {

        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
            .and()
            .requestMatcher(new OAuth2RequestedMatcher())
            .authorizeRequests()
            .antMatchers(PermitAllUrl.permitALlUrl("/login/**", "/oauth/**")).permitAll()
            // 监控端点内部放行
            .requestMatchers(EndpointRequest.toAnyEndpoint()).permitAll()
            .anyRequest().authenticated()
            .and()
            .formLogin().loginPage("/login").permitAll()
            .and()
            .logout().permitAll()
            // /logout退出清除cookie
            .addLogoutHandler(new CookieClearingLogoutHandler("token", "remember-me"))
            .logoutSuccessHandler(new LogoutSuccessHandler())
            .and()
            // 认证鉴权错误处理,为了统一异常处理。每个资源服务器都应该加上。
            .exceptionHandling()
            .and()
            .csrf().disable()
            // 禁用httpBasic
            .httpBasic().disable();
    }

    /**
     * 判断请求中是否包含oath2授权信息
     * <p>
     * ｕｒｌ参数中含有access_token或　ｈｅａｄｅｒ里面有Authorization
     */
    private static class OAuth2RequestedMatcher implements RequestMatcher {

        @Override
        public boolean matches(HttpServletRequest request) {

            if (null != request.getParameter(OAuth2AccessToken.ACCESS_TOKEN)) {
                return true;
            }
            String auth = request.getHeader("Authorization");

            if (String3Utils.isNotBlank(auth)) {
                return auth.startsWith(OAuth2AccessToken.BEARER_TYPE);
            }
            return false;
        }
    }

    /**
     * 登出清理
     */
    public class LogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler {

        public LogoutSuccessHandler() {
            // 重定向到原地址
            this.setUseReferer(true);
        }

        @Override
        public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {

            try {
                // 解密请求头
                authentication = tokenExtractor.extract(request);
                if (authentication != null && authentication.getPrincipal() != null) {
                    String tokenValue = authentication.getPrincipal().toString();
                    log.debug("revokeToken tokenValue:{}", tokenValue);
                    // 移除token
                    tokenStore.removeAccessToken(tokenStore.readAccessToken(tokenValue));
                }
            } catch (Exception e) {
                log.error("revokeToken error:{}", e);
            }
            super.onLogoutSuccess(request, response, authentication);
        }
    }
}
