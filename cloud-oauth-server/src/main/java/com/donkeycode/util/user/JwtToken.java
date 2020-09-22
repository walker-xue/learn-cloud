package com.donkeycode.util.user;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class JwtToken extends BaseEntity {
    private static final long serialVersionUID = 1250166508152483573L;

    private final String token;

    public JwtToken(String token) {
        this.token = token;
    }

}
