package com.donkeycode.data.service;

import java.util.List;

import com.donkeycode.boot.IBaseService;
import com.donkeycode.data.entity.Client;

/**
 * Auth 客户端服务
 * <p>
 * Created by ace on 2017/9/10.
 */
public interface ServiceAuthService extends IBaseService<Client> {

    /**
     * 获取授权的客户端列表
     *
     * @param serviceId
     * @param secret
     * @return
     */
    List<String> getAllowedClient(String serviceId, String secret);

    /**
     * 获取服务授权的客户端列表
     *
     * @param serviceId
     * @return
     */
    List<String> getAllowedClient(String serviceId);

    void registryClient();

    void validate(String clientId, String secret);
}
