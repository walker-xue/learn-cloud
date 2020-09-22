package com.donkeycode.util.user;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AppSecretToken extends BaseEntity {

    private static final long serialVersionUID = -8445943548965154778L;

    private String appId;
    private String appKey;
    private String appSecret;

    public AppSecretToken() {
    }
}
