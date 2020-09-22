package com.donkeycode.security.jwt;

import java.security.SignatureException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import com.donkeycode.config.UserAuthConfig;
import com.donkeycode.core.exception.UserTokenException;
import com.donkeycode.core.jwt.UserJwt;
import com.donkeycode.core.jwt.UserJwtHelper;
import com.donkeycode.core.utils.String3Utils;

import io.jsonwebtoken.ExpiredJwtException;

/**
 * Created by ace on 2017/9/15.
 */
@Configuration
public class UserAuthUtil {

    @Autowired
    private UserAuthConfig userAuthConfig;

    public UserJwt getInfoFromToken(String token) throws Exception {
    	if(StringUtils.isBlank(token)) {
    		throw new UserTokenException("User token is null!");
    	}
 
        try {
            return UserJwtHelper.getInfoFromToken(token, userAuthConfig.getPubKeyByte());
        } catch (ExpiredJwtException ex) {
            throw new UserTokenException("User token expired!");
        } catch (SignatureException ex) {
            throw new UserTokenException("User token signature error!");
        } catch (IllegalArgumentException ex) {
            throw new UserTokenException("User token is null or empty!");
        }
    }
}
