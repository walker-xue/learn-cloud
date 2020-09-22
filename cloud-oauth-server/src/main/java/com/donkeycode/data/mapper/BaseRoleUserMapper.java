package com.donkeycode.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.boot.utils.BaseMapper;
import com.donkeycode.data.entity.BaseRole;
import com.donkeycode.data.entity.BaseRoleUser;

/**
 * @author liuyadu
 */
@Repository
public interface BaseRoleUserMapper extends BaseMapper<BaseRoleUser> {

    /**
     * 查询系统用户角色
     *
     * @param userId
     * @return
     */
    List<BaseRole> selectRoleUserList(@Param("userId") Long userId);

    /**
     * 查询用户角色ID列表
     *
     * @param userId
     * @return
     */
    List<Long> selectRoleUserIdList(@Param("userId") Long userId);
}
