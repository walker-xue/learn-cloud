package com.donkeycode.core.jwt;

import java.time.Instant;
import java.util.Date;
import java.util.Objects;

import com.donkeycode.core.consts.Constants;
import com.donkeycode.core.util.RsaKeyHelper;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

/**
 * Token 解析助手
 *
 * @author yanjun.xue
 * @since 2019年6月25日
 */
public class UserJwtHelper {

    private static RsaKeyHelper rsaKeyHelper = new RsaKeyHelper();

    /**
     * 密钥加密token
     *
     * @param jwtInfo
     * @param priKeyPath
     * @param expire
     * @return
     * @throws Exception
     */
    public static String generateToken(UserJwt jwtInfo, String priKeyPath, int expire) throws Exception {
        return Jwts.builder()
            .setSubject(jwtInfo.getUniqueName())
            .claim(Constants.JWT_KEY_USER_ID, jwtInfo.getId()).claim(Constants.JWT_KEY_NAME, jwtInfo.getName())
            .setExpiration(Date.from(Instant.now().plusSeconds(expire)))
            .signWith(SignatureAlgorithm.RS256, rsaKeyHelper.getPrivateKey(priKeyPath))
            .compact();
    }

    /**
     * 密钥加密token
     *
     * @param jwtInfo
     * @param priKey
     * @param expire
     * @return
     * @throws Exception
     */
    public static String generateToken(UserJwt jwtInfo, byte priKey[], int expire) throws Exception {
        return Jwts.builder()
            .setSubject(jwtInfo.getUniqueName())
            .claim(Constants.JWT_KEY_USER_ID, jwtInfo.getId())
            .claim(Constants.JWT_KEY_NAME, jwtInfo.getName())
            .setExpiration(Date.from(Instant.now().plusSeconds(expire)))
            .signWith(SignatureAlgorithm.RS256, rsaKeyHelper.getPrivateKey(priKey))
            .compact();
    }

    /**
     * 公钥解析token
     *
     * @param token
     * @return
     * @throws Exception
     */
    public static Jws<Claims> parserToken(String token, String pubKeyPath) throws Exception {
        return Jwts.parser()
            .setSigningKey(rsaKeyHelper.getPublicKey(pubKeyPath))
            .parseClaimsJws(token);
    }

    /**
     * 公钥解析token
     *
     * @param token
     * @return
     * @throws Exception
     */
    public static Jws<Claims> parserToken(String token, byte[] pubKey) throws Exception {
        return Jwts.parser()
            .setSigningKey(rsaKeyHelper.getPublicKey(pubKey))
            .parseClaimsJws(token);
    }

    /**
     * 获取token中的用户信息
     *
     * @param token
     * @param pubKeyPath
     * @return
     * @throws Exception
     */
    public static UserJwt getInfoFromToken(String token, String pubKeyPath) throws Exception {
        Jws<Claims> claimsJws = parserToken(token, pubKeyPath);
        Claims body = claimsJws.getBody();
        return new UserJwtInfo(body.getSubject(), getObjectValue(body.get(Constants.JWT_KEY_USER_ID)), getObjectValue(body.get(Constants.JWT_KEY_NAME)));
    }

    /**
     * 获取token中的用户信息
     *
     * @param token
     * @param pubKey
     * @return
     * @throws Exception
     */
    public static UserJwt getInfoFromToken(String token, byte[] pubKey) throws Exception {
        Jws<Claims> claimsJws = parserToken(token, pubKey);
        Claims body = claimsJws.getBody();
        return new UserJwtInfo(body.getSubject(), getObjectValue(body.get(Constants.JWT_KEY_USER_ID)), getObjectValue(body.get(Constants.JWT_KEY_NAME)));
    }

    private static String getObjectValue(Object obj) {
        return Objects.isNull(obj) ? "" : obj.toString();
    }
}
