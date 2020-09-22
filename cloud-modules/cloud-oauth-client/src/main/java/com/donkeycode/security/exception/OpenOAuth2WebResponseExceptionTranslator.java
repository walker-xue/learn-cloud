package com.donkeycode.security.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.provider.error.WebResponseExceptionTranslator;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.donkeycode.core.response.ResultBody;

import lombok.extern.slf4j.Slf4j;

/**
 * 自定义oauth2异常提示
 *
 * @author liuyadu
 */
@Slf4j
public class OpenOAuth2WebResponseExceptionTranslator implements WebResponseExceptionTranslator {

    @Override
    public ResponseEntity<ResultBody> translate(Exception e) throws Exception {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        ResultBody responseData = OpenGlobalExceptionHandler.resolveException(e, request.getRequestURI());
        return ResponseEntity.status(responseData.getHttpStatus()).body(responseData);
    }
}
