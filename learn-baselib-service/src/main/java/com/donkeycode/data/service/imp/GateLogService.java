package com.donkeycode.data.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.core.collectors.CollectorUtils;
import com.donkeycode.data.entity.GateLog;
import com.donkeycode.data.service.IGateLogService;
import com.github.skunk.data.BaseService;

import tk.mybatis.mapper.weekend.Weekend;
import tk.mybatis.mapper.weekend.WeekendCriteria;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-07-01 14:36
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GateLogService extends BaseService<GateLog> implements IGateLogService {

    @Override
    public List<GateLog> getList(Map<String, String> param) {
        Weekend<GateLog> weekend = new Weekend<>(GateLog.class);
        WeekendCriteria<GateLog, Object> criteria = weekend.weekendCriteria();
        if (CollectorUtils.isNotEmpty(param)) {
            if (StringUtils.isNotBlank(param.get("menu"))) {
                criteria.andLike(GateLog::getMenu, "%" + param.get("menu") + "%");
            }

        }
        return mapper.selectByExample(weekend);
    }
}
