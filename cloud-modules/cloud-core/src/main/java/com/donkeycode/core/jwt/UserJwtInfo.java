package com.donkeycode.core.jwt;

import com.donkeycode.core.BaseEntity;

/**
 * @author yanjun.xue
 * @since 2019年6月27日
 */
public class UserJwtInfo extends BaseEntity implements UserJwt {

	private static final long serialVersionUID = 1L;

	private String username;
	private String userId;
	private String name;

	public UserJwtInfo(String username, String userId, String name) {
		this.username = username;
		this.userId = userId;
		this.name = name;
	}

	@Override
	public String getUniqueName() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String getId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (o == null || getClass() != o.getClass()) {
			return false;
		}

		UserJwtInfo jwtInfo = (UserJwtInfo) o;

		if (username != null ? !username.equals(jwtInfo.username) : jwtInfo.username != null) {
			return false;
		}
		return userId != null ? userId.equals(jwtInfo.userId) : jwtInfo.userId == null;

	}

	@Override
	public int hashCode() {
		int result = username != null ? username.hashCode() : 0;
		result = 31 * result + (userId != null ? userId.hashCode() : 0);
		return result;
	}
}
