package com.donkeycode.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.donkeycode.core.utils.String3Utils;
import lombok.extern.slf4j.Slf4j;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.donkeycode.annotation.IgnoreClientToken;
import com.donkeycode.security.jwt.ServiceAuthUtil;
import com.donkeycode.config.ServiceAuthConfig;
import com.donkeycode.core.exception.ClientForbiddenException;
import com.donkeycode.core.jwt.UserJwt;

/**
 * 服务认证拦截器
 *
 * @author yanjun.xue
 * @since 2019年7月14日
 */
@Slf4j
public class ServiceAuthInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    ServiceAuthUtil serviceAuthUtil;

    @Autowired
    ServiceAuthConfig serviceAuthConfig;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        // 配置该注解，说明不进行服务拦截
        IgnoreClientToken annotation = handlerMethod.getBeanType().getAnnotation(IgnoreClientToken.class);
        if (annotation == null) {
            annotation = handlerMethod.getMethodAnnotation(IgnoreClientToken.class);
        }
        if (annotation != null) {
            return super.preHandle(request, response, handler);
        }

        String token = request.getHeader(serviceAuthConfig.getTokenHeader());

        if (StringUtils.isBlank(token)) {
            throw new ClientForbiddenException("Client is Forbidden! get [" + serviceAuthConfig.getTokenHeader() + "] value is null.");
        }

        UserJwt infoFromToken = serviceAuthUtil.getInfoFromToken(token);
        String uniqueName = infoFromToken.getUniqueName();
        for (String client : serviceAuthUtil.getAllowedClient()) {
            if (client.equals(uniqueName)) {
                return super.preHandle(request, response, handler);
            }
        }
        throw new ClientForbiddenException("Client is Forbidden!");
    }
}
