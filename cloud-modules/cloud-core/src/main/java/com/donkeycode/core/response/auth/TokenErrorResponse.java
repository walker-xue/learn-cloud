package com.donkeycode.core.response.auth;

import com.donkeycode.core.consts.HttpCode;
import com.donkeycode.core.response.BaseResponse;

/**
 * Created by ace on 2017/8/23.
 */
public class TokenErrorResponse extends BaseResponse {
	
    public TokenErrorResponse(String message) {
        super(HttpCode.TOKEN_ERROR_CODE, message);
    }
}
