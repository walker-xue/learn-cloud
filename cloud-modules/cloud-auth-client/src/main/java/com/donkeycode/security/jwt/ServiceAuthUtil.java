
package com.donkeycode.security.jwt;

import java.security.SignatureException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.donkeycode.config.ServiceAuthConfig;
import com.donkeycode.core.exception.ClientTokenException;
import com.donkeycode.core.jwt.UserJwt;
import com.donkeycode.core.jwt.UserJwtHelper;
import com.donkeycode.core.response.BaseResponse;
import com.donkeycode.core.response.ObjectResponse;
import com.donkeycode.feign.ServiceAuthFeign;

import io.jsonwebtoken.ExpiredJwtException;
import lombok.extern.slf4j.Slf4j;

/**
 * 服务Auth认证
 *
 * @author yanjun.xue
 * @since 2019年6月28日
 */
@Slf4j
@SuppressWarnings("unchecked")
@Configuration
@EnableScheduling
public class ServiceAuthUtil {

	private List<String> allowedClient;
	private String clientToken;

	@Autowired
	ServiceAuthConfig serviceAuthConfig;

	@Autowired
	ServiceAuthFeign serviceAuthFeign;

	public UserJwt getInfoFromToken(String token) throws Exception {
		try {
			return UserJwtHelper.getInfoFromToken(token, serviceAuthConfig.getPubKeyByte());
		} catch (ExpiredJwtException ex) {
			throw new ClientTokenException("Client token expired!");
		} catch (SignatureException ex) {
			throw new ClientTokenException("Client token signature error!");
		} catch (IllegalArgumentException ex) {
			throw new ClientTokenException("Client token is null or empty!");
		}
	}

	@Scheduled(cron = "0/30 * * * * ?")
	public void refreshAllowedClient() {
		log.debug("refresh allowedClient.....");
		BaseResponse resp = serviceAuthFeign.getAllowedClient(serviceAuthConfig.getClientId(), serviceAuthConfig.getClientSecret());
		if (resp.getStatus() == 200) {
			ObjectResponse<List<String>> allowedClient = (ObjectResponse<List<String>>) resp;
			this.allowedClient = allowedClient.getData();
		}
	}

	@Scheduled(cron = "0 0/10 * * * ?")
	public void refreshClientToken() {
		log.debug("refresh client token.....");
		BaseResponse resp = serviceAuthFeign.getAccessToken(serviceAuthConfig.getClientId(), serviceAuthConfig.getClientSecret());
		if (resp.getStatus() == 200) {
			ObjectResponse<String> clientToken = (ObjectResponse<String>) resp;
			this.clientToken = clientToken.getData();
		}
	}

	public String getClientToken() {
		if (this.clientToken == null) {
			this.refreshClientToken();
		}
		return clientToken;
	}

	public List<String> getAllowedClient() {
		if (this.allowedClient == null) {
			this.refreshAllowedClient();
		}
		return allowedClient;
	}
}