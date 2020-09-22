package com.donkeycode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.data.service.BaseAppService;

import lombok.extern.slf4j.Slf4j;

/**
 * 实现OAuth2服务器端对客户端进行校验
 *
 * @author: liuyadu
 * @date: 2018/11/12 16:26
 * @description:
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class ClientDetailsServiceImpl implements ClientDetailsService {

    @Autowired
    BaseAppService baseAppService;

    @Override
    public ClientDetails loadClientByClientId(String clientId) throws ClientRegistrationException {
        ClientDetails details = baseAppService.getAppClientInfo(clientId);
        if (details == null) {
            return null;
        }
        if (details.getAdditionalInformation() != null) {
            String status = details.getAdditionalInformation().getOrDefault("status", "0").toString();

            if (!"1".equals(status)) {
                throw new ClientRegistrationException("客户端已被禁用");
            }
        }
        return details;
    }
}
