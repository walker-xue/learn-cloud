package com.donkeycode.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.data.entity.Menu;
import com.github.skunk.data.utils.BasisMapper;

@Repository
public interface MenuMapper extends BasisMapper<Menu> {

    List<Menu> selectMenuByAuthorityId(@Param("authorityId") String authorityId, @Param("authorityType") String authorityType);

    /**
     * 根据用户和组的权限关系查找用户可访问菜单
     *
     * @param userId
     * @return
     */
    List<Menu> selectAuthorityMenuByUserId(@Param("userId") int userId);

    /**
     * 根据用户和组的权限关系查找用户可访问的系统
     *
     * @param userId
     * @return
     */
    List<Menu> selectAuthoritySystemByUserId(@Param("userId") int userId);
}