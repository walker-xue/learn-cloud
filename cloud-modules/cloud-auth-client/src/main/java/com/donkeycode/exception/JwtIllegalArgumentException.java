package com.donkeycode.exception;

import lombok.Getter;
import lombok.Setter;

/**
 * JWT 非法参数异常
 * 
 * @author yanjun.xue
 * @since 2019年7月15日
 */
@Setter
@Getter
public class JwtIllegalArgumentException extends Exception {

	private static final long serialVersionUID = 1L;

	private int code = 40101;
	private String messages;

	public JwtIllegalArgumentException(String s) {
		super(s);
	}
}
