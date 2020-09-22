package com.donkeycode.data.mapper;



import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.donkeycode.boot.utils.BaseMapper;
import com.donkeycode.data.entity.BaseUser;

@Repository
@Mapper
public interface BaseUserMapper extends BaseMapper<BaseUser> {

}