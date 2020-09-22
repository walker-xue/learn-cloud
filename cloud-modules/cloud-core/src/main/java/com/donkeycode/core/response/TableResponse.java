package com.donkeycode.core.response;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-14 22:40
 */
@Setter
@Getter
public class TableResponse<T> extends BaseResponse {

	private TableData<T> data;

	public TableResponse(long total, List<T> rows) {
		this.data = new TableData<T>(total, rows);
	}

	public TableResponse() {
		this.data = new TableData<T>();
	}

	TableResponse<T> total(int total) {
		this.data.setTotal(total);
		return this;
	}

	TableResponse<T> total(List<T> rows) {
		this.data.setRows(rows);
		return this;
	}
 

	@SuppressWarnings("hiding")
	@Setter
	@Getter
	class TableData<T> {
		
		private long total;
		private List<T> rows;

		public TableData() {
		}

		public TableData(long total, List<T> rows) {
			this.total = total;
			this.rows = rows;
		}

	}
}
