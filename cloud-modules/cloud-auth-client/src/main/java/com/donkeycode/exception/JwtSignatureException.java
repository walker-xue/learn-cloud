package com.donkeycode.exception;

import lombok.Getter;
import lombok.Setter;

/**
 * JWT 签名异常
 * 
 * @author yanjun.xue
 * @since 2019年7月15日
 */
@Setter
@Getter
public class JwtSignatureException extends Exception {

	private static final long serialVersionUID = 1L;

	private int code = 40102;
	private String messages;

	public JwtSignatureException(String s) {
		super(s);
	}
}
