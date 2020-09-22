package com.donkeycode.core.response;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by Ace on 2017/6/11.
 */
@Setter
@Getter
public class ObjectResponse<T> extends BaseResponse {

	private T data;
	private boolean rel;

	public ObjectResponse<T> rel(boolean rel) {
		this.setRel(rel);
		return this;
	}

	public ObjectResponse<T> data(T data) {
		this.setData(data);
		return this;
	}

}
