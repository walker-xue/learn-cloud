package com.donkeycode.data.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.data.entity.ResourceAuthority;
import com.github.skunk.data.utils.BasisMapper;

@Repository
public interface ResourceAuthorityMapper extends BasisMapper<ResourceAuthority> {

    void deleteByAuthorityIdAndResourceType(
        @Param("authorityId") String authorityId,
        @Param("resourceType") String resourceType);
}