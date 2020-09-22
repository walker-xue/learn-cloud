package com.donkeycode.config;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author ace
 * @date 2017/9/8
 */
@Configuration
@Primary
public class WebConfiguration implements WebMvcConfigurer {

    /**
     * 需要用户和服务认证判断的路径
     *
     * @return
     */
    private ArrayList<String> getIncludePathPatterns() {
        ArrayList<String> list = new ArrayList<>();
        String[] urls = {
            "/element/**",
            "/gateLog/**",
            "/group/**",
            "/groupType/**",
            "/menu/**",
            "/user/**",
            "/api/permissions",
            "/api/user/un/**"
        };
        Collections.addAll(list, urls);
        return list;
    }

}
