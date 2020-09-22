package com.donkeycode.data.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Service;

import com.donkeycode.boot.BaseService;
import com.donkeycode.core.exception.ClientInvalidException;
import com.donkeycode.core.utils.UUIDUtils;
import com.donkeycode.data.entity.Client;
import com.donkeycode.data.mapper.ClientMapper;
import com.donkeycode.data.service.ServiceAuthService;

/**
 * Created by ace on 2017/9/10.
 */
@Service
public class ServiceClientAuthService extends BaseService<Client> implements ServiceAuthService {

    @Autowired
    ClientMapper clientMapper;

    @Autowired
    DiscoveryClient discovery;


    private Client getClient(String clientId, String secret) {
        Client client = new Client();
        client.setCode(clientId);
        client = clientMapper.selectOne(client);
        if (client == null || !client.getSecret().equals(secret)) {
            throw new ClientInvalidException("Client not found or Client secret is error!");
        }
        return client;
    }

    @Override
    public void validate(String clientId, String secret) {
        Client client = new Client();
        client.setCode(clientId);
        client = clientMapper.selectOne(client);
        if (client == null || !client.getSecret().equals(secret)) {
            throw new ClientInvalidException("Client not found or Client secret is error!");
        }
    }

    @Override
    public List<String> getAllowedClient(String clientId, String secret) {
        Client info = this.getClient(clientId, secret);
        List<String> clients = clientMapper.selectAllowedClient(info.getId() + "");
        if (clients == null) {
            new ArrayList<String>();
        }
        return clients;
    }

    @Override
    public List<String> getAllowedClient(String serviceId) {
        Client info = getClient(serviceId);
        List<String> clients = clientMapper.selectAllowedClient(info.getId() + "");
        if (clients == null) {
            new ArrayList<String>();
        }
        return clients;
    }

    private Client getClient(String clientId) {
        Client client = new Client();
        client.setCode(clientId);
        client = clientMapper.selectOne(client);
        return client;
    }

    /**
     * 自动注册节点
     */
    @Override
    public void registryClient() {
        discovery.getServices().forEach((name) -> {
            Client client = new Client();
            client.setName(name);
            client.setCode(name);
            Client dbClient = clientMapper.selectOne(client);
            if (dbClient == null) {
                client.setSecret(UUIDUtils.getRandomUUID());
                clientMapper.insert(client);
            }
        });
    }
}
