package com.donkeycode.core.exception;

import com.donkeycode.core.consts.HttpCode;

/**
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class ClientTokenException extends BaseException {

    private static final long serialVersionUID = 1L;

    public ClientTokenException(String message) {
        super(HttpCode.EX_CLIENT_INVALID_CODE, message);
    }
}
