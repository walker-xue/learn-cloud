package com.donkeycode.core.response.auth;

import com.donkeycode.core.consts.HttpCode;
import com.donkeycode.core.response.BaseResponse;

/**
 * Created by ace on 2017/8/25.
 */
public class TokenForbiddenResponse extends BaseResponse {
	
	
	public TokenForbiddenResponse(String message) {
		super(HttpCode.TOKEN_FORBIDDEN_CODE, message);
	}
}
