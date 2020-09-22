package com.donkeycode.core.response;

import lombok.Getter;
import lombok.Setter;

/**
 * 
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 * @param <T>
 */
@Setter
@Getter
public class ListResponse<T> extends BaseResponse {

	private String msg;
	private T result;
	private int count;

	public ListResponse<T> count(int count) {
		this.setCount(count);
		return this;
	}

	public ListResponse<T> count(Long count) {
		this.setCount(count.intValue());
		return this;
	}

	public ListResponse<T> msg(String msg) {
		this.setMsg(msg);
		return this;
	}

	public ListResponse<T> result(T result) {
		this.setResult(result);
		return this;
	}

}
