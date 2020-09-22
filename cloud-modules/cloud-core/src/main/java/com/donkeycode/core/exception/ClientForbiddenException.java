package com.donkeycode.core.exception;

import com.donkeycode.core.consts.HttpCode;

/**
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class ClientForbiddenException extends BaseException {

    private static final long serialVersionUID = 1L;

    public ClientForbiddenException(String message) {
        super(HttpCode.EX_CLIENT_FORBIDDEN_CODE, message);
    }

}
