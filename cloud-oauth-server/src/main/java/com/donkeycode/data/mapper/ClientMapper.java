package com.donkeycode.data.mapper;

import com.donkeycode.boot.utils.BaseMapper;
import com.donkeycode.data.entity.Client;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ClientMapper extends BaseMapper<Client> {

    List<String> selectAllowedClient(String serviceId);

    List<Client> selectAuthorityServiceInfo(int clientId);
}