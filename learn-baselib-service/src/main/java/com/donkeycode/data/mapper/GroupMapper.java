package com.donkeycode.data.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.data.entity.Group;
import com.github.skunk.data.utils.BasisMapper;

@Repository
public interface GroupMapper extends BasisMapper<Group> {

    void deleteGroupMembersById(@Param("groupId") int groupId);

    void deleteGroupLeadersById(@Param("groupId") int groupId);

    void insertGroupMembersById(@Param("groupId") int groupId, @Param("userId") int userId);

    void insertGroupLeadersById(@Param("groupId") int groupId, @Param("userId") int userId);
}