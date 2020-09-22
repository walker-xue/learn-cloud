package com.donkeycode.data.service;

import java.util.List;
import java.util.Map;

import com.donkeycode.data.entity.GateLog;
import com.github.skunk.data.IBaseService;

/**
 * 注解工具
 *
 * @author donkey
 * @date ${date}
 * @since 0.0.1
 */
public interface IGateLogService extends IBaseService<GateLog> {

    List<GateLog> getList(Map<String, String> param);
}
