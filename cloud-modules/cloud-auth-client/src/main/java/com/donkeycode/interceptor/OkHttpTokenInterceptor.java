package com.donkeycode.interceptor;

import java.io.IOException;

import com.donkeycode.core.consts.HttpCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

import com.donkeycode.security.jwt.ServiceAuthUtil;
import com.donkeycode.config.ServiceAuthConfig;
import com.donkeycode.config.UserAuthConfig;
import com.donkeycode.core.consts.Constants;
import com.donkeycode.core.context.BaseContextHandler;

import lombok.extern.java.Log;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;


/**
 * @author ace
 */
@Component
@Log
public class OkHttpTokenInterceptor implements Interceptor {

    @Autowired
    @Lazy
    private ServiceAuthUtil serviceAuthUtil;
    @Autowired
    @Lazy
    private ServiceAuthConfig serviceAuthConfig;
    @Autowired
    @Lazy
    private UserAuthConfig userAuthConfig;


    @Override
    public Response intercept(Chain chain) throws IOException {
        Request newRequest = null;
        if (chain.request().url().toString().contains("client/token")) {
            newRequest = chain.request()
                .newBuilder()
                .header(userAuthConfig.getTokenHeader(), BaseContextHandler.getToken())
                .build();
        } else {
            newRequest = chain.request()
                .newBuilder()
                .header(userAuthConfig.getTokenHeader(), BaseContextHandler.getToken())
                .header(serviceAuthConfig.getTokenHeader(), serviceAuthUtil.getClientToken())
                .build();
        }
        Response response = chain.proceed(newRequest);
        if (HttpStatus.FORBIDDEN.value() == response.code()) {
            if (response.body().string().contains(String.valueOf(HttpCode.EX_CLIENT_INVALID_CODE))) {
                log.info("Client Token Expire,Retry to request...");
                serviceAuthUtil.refreshClientToken();
                newRequest = chain.request()
                    .newBuilder()
                    .header(userAuthConfig.getTokenHeader(), BaseContextHandler.getToken())
                    .header(serviceAuthConfig.getTokenHeader(), serviceAuthUtil.getClientToken())
                    .build();
                response = chain.proceed(newRequest);
            }
        }
        return response;
    }
}
