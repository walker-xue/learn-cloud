package com.donkeycode.core.context;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import com.donkeycode.core.consts.Constants;

/**
 * 应用上下文变量获取
 * 
 * 
 * @author yanjun.xue
 * @since 2019年6月28日
 */
public class BaseContextHandler {

	public static ThreadLocal<Map<String, Object>> threadLocal = new ThreadLocal<Map<String, Object>>();

	public static void set(String key, Object value) {
		Map<String, Object> map = threadLocal.get();
		if (map == null) {
			map = new HashMap<String, Object>();
			threadLocal.set(map);
		}
		map.put(key, value);
	}

	public static Object get(String key) {
		Map<String, Object> map = threadLocal.get();
		if (map == null) {
			map = new HashMap<String, Object>();
			threadLocal.set(map);
		}
		return map.get(key);
	}

	public static String getUserID() {
		Object value = get(Constants.CONTEXT_KEY_USER_ID);
		return returnObjectValue(value);
	}

	public static String getUsername() {
		Object value = get(Constants.CONTEXT_KEY_USERNAME);
		return returnObjectValue(value);
	}

	public static String getName() {
		Object value = get(Constants.CONTEXT_KEY_USER_NAME);
		return getObjectValue(value);
	}

	public static String getToken() {
		Object value = get(Constants.CONTEXT_KEY_USER_TOKEN);
		return getObjectValue(value);
	}

	public static void setToken(String token) {
		set(Constants.CONTEXT_KEY_USER_TOKEN, token);
	}

	public static void setName(String name) {
		set(Constants.CONTEXT_KEY_USER_NAME, name);
	}

	public static void setUserID(String userID) {
		set(Constants.CONTEXT_KEY_USER_ID, userID);
	}

	public static void setUsername(String username) {
		set(Constants.CONTEXT_KEY_USERNAME, username);
	}

	private static String returnObjectValue(Object value) {
		return value == null ? null : value.toString();
	}

	public static void remove() {
		threadLocal.remove();
	}

	private static String getObjectValue(Object obj) {
		return Objects.isNull(obj) ? "" : obj.toString();
	}
}
