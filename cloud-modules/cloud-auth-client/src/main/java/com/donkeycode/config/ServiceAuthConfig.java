package com.donkeycode.config;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ServiceAuthConfig {

    private byte[] pubKeyByte;
    @Value("${auth.client.id:null}")
    private String clientId;
    @Value("${auth.client.secret}")
    private String clientSecret;
    @Value("${auth.client.token-header}")
    private String tokenHeader;
    @Value("${spring.application.name}")
    private String applicationName;


    public String getClientId() {
        return "null".equals(clientId) ? applicationName : clientId;
    }
}
