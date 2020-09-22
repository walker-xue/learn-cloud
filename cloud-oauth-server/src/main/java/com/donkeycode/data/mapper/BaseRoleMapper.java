package com.donkeycode.data.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.donkeycode.boot.utils.BaseMapper;
import com.donkeycode.data.entity.BaseRole;

/**
 * @author liuyadu
 */
@Repository
public interface BaseRoleMapper extends BaseMapper<BaseRole> {

    List<BaseRole> selectRoleList(Map params);
}
