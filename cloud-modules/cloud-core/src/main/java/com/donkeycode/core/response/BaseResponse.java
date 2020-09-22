package com.donkeycode.core.response;

import lombok.Getter;
import lombok.Setter;

/**
 * 
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 */
@Setter
@Getter
public class BaseResponse {
	
	private int status = 200;
	private String message;

	public BaseResponse() {
	}

	public BaseResponse(int status, String message) {
		this.status = status;
		this.message = message;
	}
}
