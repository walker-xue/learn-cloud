package com.donkeycode.config;

import com.donkeycode.core.consts.Constants;
import com.netflix.client.ClientException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestControllerAdvice
public class ExceptionHandlerConfig {

    /**
     * 调用远程服务时，服务不存在异常
     *
     * @param ex
     * @return
     * @throws Exception
     */
    @ExceptionHandler(value = {ClientException.class})
    protected ResponseEntity<Map<String, Object>> clientException(ClientException ex) {
        log.error(ex.getMessage(), ex);
        log.info(ex.toString());
        log.error("=============================================");
        //TODO  全局异常处理
        Map<String, Object> parameters = new HashMap<>();
        parameters.put(Constants.MESSAGE_KEY, ex.getMessage());
        parameters.put(Constants.CODE_KEY, ex.getErrorCode());
        parameters.put("1", ex.getErrorMessage());
        parameters.put("2", ex.getErrorObject());
        parameters.put("3", ex.getErrorType());
        parameters.put("4", ex.getErrorMessage());
        parameters.put("5", ex.getInternalMessage());
        parameters.put("6", ex.getLocalizedMessage());
        return new ResponseEntity<>(parameters, HttpStatus.INTERNAL_SERVER_ERROR);
    }

}