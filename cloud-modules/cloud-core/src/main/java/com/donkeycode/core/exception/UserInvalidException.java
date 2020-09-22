package com.donkeycode.core.exception;

import com.donkeycode.core.consts.HttpCode;

/**
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class UserInvalidException extends BaseException {

    private static final long serialVersionUID = 571491655971691382L;

    public UserInvalidException(String message) {
        super(HttpCode.EX_USER_PASS_INVALID_CODE, message);
    }
}
