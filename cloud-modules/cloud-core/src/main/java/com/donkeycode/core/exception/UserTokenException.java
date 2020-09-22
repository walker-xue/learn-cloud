package com.donkeycode.core.exception;

import com.donkeycode.core.consts.Constants;
import com.donkeycode.core.consts.HttpCode;
import com.donkeycode.core.exception.BaseException;

/**
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class UserTokenException extends BaseException {

	private static final long serialVersionUID = 1L;

	public UserTokenException(String message) {
		super(HttpCode.EX_USER_INVALID_CODE, message);
	}
}
