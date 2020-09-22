package com.donkeycode.core.web;

import java.util.Enumeration;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * Http请求参数包装
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 */
@SuppressWarnings({ "unchecked", "rawtypes" })
public class ParamRequestWrapper extends HttpServletRequestWrapper {

	private Map<?, ?> params;

	public ParamRequestWrapper(HttpServletRequest request, Map<?, ?> newParams) {
		super(request);
		this.params = newParams;
	}

	@Override
	public Map getParameterMap() {
		return params;
	}

	@Override
	public Enumeration getParameterNames() {
		Vector l = new Vector(params.keySet());
		return l.elements();
	}

	@Override
	public String[] getParameterValues(String name) {
		Object v = params.get(name);

		if (v == null) {
			return null;
		}
		if (v instanceof String[]) {
			return (String[]) v;
		}
		if (v instanceof String) {
			return new String[] { (String) v };
		}
		return new String[] { v.toString() };

	}

	@Override
	public String getParameter(String name) {
		Object v = params.get(name);
		if (v == null) {
			return null;
		}
	
		if (v instanceof String[]) {
			String[] strArr = (String[]) v;
			return strArr.length > 0 ? strArr[0] : null;
		}

		if (v instanceof String) {
			return (String) v;
		}
		return v.toString();
	}
}
