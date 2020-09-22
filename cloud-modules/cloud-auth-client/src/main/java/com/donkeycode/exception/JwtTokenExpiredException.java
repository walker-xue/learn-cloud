package com.donkeycode.exception;

import lombok.Getter;
import lombok.Setter;

/**
 * JWT token 过期异常
 * 
 * @author yanjun.xue
 * @since 2019年7月15日
 */
@Setter
@Getter
public class JwtTokenExpiredException extends Exception {

	private static final long serialVersionUID = 1L;

	private int code = 40102;
	private String messages;

	public JwtTokenExpiredException(String s) {
		super(s);
	}
}
