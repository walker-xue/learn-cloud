package com.donkeycode.data.mapper;

import com.donkeycode.boot.utils.BaseMapper;
import com.donkeycode.data.entity.ClientService;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ClientServiceMapper extends BaseMapper<ClientService> {
}