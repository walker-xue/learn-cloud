package com.donkeycode.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.autoconfigure.security.servlet.EndpointRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import com.donkeycode.security.CLoudAuthHelper;
import com.donkeycode.security.exception.OpenAccessDeniedHandler;
import com.donkeycode.security.exception.OpenAuthenticationEntryPoint;

/**
 * oauth2资源服务器配置
 *
 * @author: liuyadu
 * @date: 2018/10/23 10:31
 * @description:
 */
@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

    @Autowired
    RedisConnectionFactory redisConnectionFactory;
    @Autowired
    DataSource dataSource;
    @Autowired
    PasswordEncoder passwordEncoder;

    @Bean
    public RedisTokenStore getRedisTokenStore() {
        return new RedisTokenStore(redisConnectionFactory);
    }

    @Bean
    public JdbcClientDetailsService getClientDetailsService() {
        JdbcClientDetailsService jdbcClientDetailsService = new JdbcClientDetailsService(dataSource);
        jdbcClientDetailsService.setPasswordEncoder(passwordEncoder);
        return jdbcClientDetailsService;
    }

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        // 构建redis获取token服务类
        resources.tokenServices(CLoudAuthHelper.buildRedisTokenServices(redisConnectionFactory));
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
            .and()
            .authorizeRequests()
            // 监控端点内部放行
            .requestMatchers(EndpointRequest.toAnyEndpoint()).permitAll()
            // fegin访问或无需身份认证
            .antMatchers(
                "/authority/access",
                "/authority/app",
                "/app/*/info",
                "/app/client/*/info",
                "/gateway/api/**",
                "/user/add/thirdParty",
                "/user/info",
                "/user/login",
                "/developer/add/thirdParty",
                "/developer/info",
                "/developer/login"
            ).permitAll()
            .anyRequest().authenticated()
            .and()
            //认证鉴权错误处理,为了统一异常处理。每个资源服务器都应该加上。
            .exceptionHandling()
            .accessDeniedHandler(new OpenAccessDeniedHandler())
            .authenticationEntryPoint(new OpenAuthenticationEntryPoint())
            .and()
            .csrf().disable();
    }

}

