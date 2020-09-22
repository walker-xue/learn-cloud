package com.donkeycode.bean;


import com.donkeycode.core.jwt.UserJwt;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by ace on 2017/9/10.
 */
@Setter
@Getter
public class ClientJwt implements UserJwt {

    private String clientId;
    private String name;
    private String id;

    public ClientJwt(String clientId, String name, String id) {
        this.clientId = clientId;
        this.name = name;
        this.id = id;
    }

    @Override
    public String getUniqueName() {
        return clientId;
    }

    @Override
    public String getId() {
        return id;
    }

    @Override
    public String getName() {
        return name;
    }
}
