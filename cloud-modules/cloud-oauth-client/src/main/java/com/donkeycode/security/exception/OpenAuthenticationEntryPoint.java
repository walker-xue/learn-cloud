package com.donkeycode.security.exception;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import com.donkeycode.core.response.ResultBody;
import com.donkeycode.security.utils.WebUtils;

import lombok.extern.slf4j.Slf4j;

/**
 * 自定义未认证处理
 *
 * @author liuyadu
 */
@Slf4j
public class OpenAuthenticationEntryPoint implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
        AuthenticationException exception) throws IOException, ServletException {

        ResultBody resultBody = OpenGlobalExceptionHandler.resolveException(exception, request.getRequestURI());
        response.setStatus(resultBody.getHttpStatus());
        WebUtils.writeJson(response, resultBody);
    }
}