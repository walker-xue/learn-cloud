package com.donkeycode.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.data.entity.User;
import com.github.skunk.data.utils.BasisMapper;

@Repository
public interface UserMapper extends BasisMapper<User> {

    List<User> selectMemberByGroupId(@Param("groupId") int groupId);

    List<User> selectLeaderByGroupId(@Param("groupId") int groupId);
}