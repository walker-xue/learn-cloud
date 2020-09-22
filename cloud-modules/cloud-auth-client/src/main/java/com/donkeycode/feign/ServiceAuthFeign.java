package com.donkeycode.feign;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.donkeycode.core.response.ObjectResponse;

/**
 * Service Auth 配置
 *
 * @author yanjun.xue
 * @since 2019年6月25日
 */
@FeignClient(value = "${auth.serviceId}", configuration = {})
public interface ServiceAuthFeign {

    /**
     * 获取可以访问的服务
     *
     * @param serviceId
     * @param secret
     * @return
     */
    @RequestMapping(value = "/client/myClient")
    ObjectResponse<List<String>> getAllowedClient(@RequestParam("serviceId") String serviceId, @RequestParam("secret") String secret);

    /**
     * 获取 Token 值
     *
     * @param clientId
     * @param secret
     * @return
     */
    @PostMapping(value = "/client/token")
    ObjectResponse<?> getAccessToken(@RequestParam("clientId") String clientId, @RequestParam("secret") String secret);

    /**
     * 验证服务PukKey
     *
     * @param clientId
     * @param secret
     * @return
     */
    @PostMapping(value = "/client/servicePubKey")
    ObjectResponse<byte[]> getServicePublicKey(@RequestParam("clientId") String clientId, @RequestParam("secret") String secret);

    /**
     * 使用PubKey
     *
     * @param clientId
     * @param secret
     * @return
     */
    @PostMapping(value = "/client/userPubKey")
    ObjectResponse<byte[]> getUserPublicKey(@RequestParam("clientId") String clientId, @RequestParam("secret") String secret);

}
