package com.donkeycode.rpc;

import java.util.Date;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.donkeycode.common.log.LogInfo;
import com.donkeycode.data.entity.GateLog;
import com.donkeycode.data.service.imp.GateLogService;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-07-01 14:39
 */
@RequestMapping("api")
@RestController
public class LogRest {

    @Autowired
    GateLogService gateLogBiz;

    @PostMapping(value = "/log/save")
    void saveLog(@RequestBody LogInfo info) {
        GateLog log = new GateLog();
        BeanUtils.copyProperties(info, log);
        log.setCrtTime(new Date(info.getCrtTime()));
        gateLogBiz.insertSelective(log);
    }
}
