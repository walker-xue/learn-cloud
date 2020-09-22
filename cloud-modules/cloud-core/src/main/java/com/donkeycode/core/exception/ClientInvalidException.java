package com.donkeycode.core.exception;

import com.donkeycode.core.consts.Constants;
import com.donkeycode.core.consts.HttpCode;
import com.donkeycode.core.exception.BaseException;

/**
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class ClientInvalidException extends BaseException {

	private static final long serialVersionUID = 1L;

	public ClientInvalidException(String message) {
		super(HttpCode.EX_CLIENT_INVALID_CODE, message);
	}
}
