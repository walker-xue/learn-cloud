package com.donkeycode.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.data.entity.GateLog;
import com.donkeycode.data.service.IGateLogService;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-07-01 20:32
 */
@RestController
@RequestMapping("gateLog")
public class GateLogResource extends BaseResource<IGateLogService, GateLog> {

}
