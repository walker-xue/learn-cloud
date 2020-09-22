package com.donkeycode.util.user;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserAndPasswordToken extends BaseEntity {

    private static final long serialVersionUID = -8445943548965154778L;

    private String username;
    private String password;

    public UserAndPasswordToken() {
    }

    public UserAndPasswordToken(String username, String password) {
        this.username = username;
        this.password = password;
    }
}
