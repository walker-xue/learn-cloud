package com.donkeycode.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.donkeycode.core.PermitAllUrl;

import lombok.extern.slf4j.Slf4j;

/**
 * Spring Security Config
 */
@Slf4j
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    UserDetailsService userDetailsService;

    /**
     * 全局用户信息
     *
     * @param auth
     *     　认证管理
     * @throws Exception
     *     　用户认证异常信息
     */
    @Autowired
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    /**
     * 密码校验器
     * <p>
     * 临时 需要 MD5 + SALT
     *
     * @author walker
     */
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    /**
     * 认证管理
     *
     * @throws Exception
     *     　认证异常信息
     * @return　　认证管理对象
     */
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    /**
     * http 安全配置
     *
     * @param http
     *     　http 安全对象
     * @throws Exception
     *     　安全异常信息
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests().antMatchers(PermitAllUrl.permitALlUrl()).permitAll().anyRequest().authenticated()
            .and().httpBasic()
            .and().rememberMe().rememberMeCookieName("rememberMe").rememberMeParameter("rememberMe")
            .and().csrf().disable();
    }

    /**
     * 为了使用用户名密码校验实现了　ＡｕｔｈｅｎｔｉｃａｃｔｉｏｎＰｒｏｖｉｄｅｒ和ＵｓｅｒＤｅｔａｉｌｓＳｅｒｖｉｃｅ
     *
     * @param auth
     */
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) {
        try {
            auth.userDetailsService(userDetailsService);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage(), e);
            e.printStackTrace();
        }

    }

}
