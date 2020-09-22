package com.donkeycode.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.donkeycode.data.entity.Element;
import com.github.skunk.data.utils.BasisMapper;

@Repository
@Mapper
public interface ElementMapper extends BasisMapper<Element> {

    List<Element> selectAuthorityElementByUserId(@Param("userId") String userId);

    List<Element> selectAuthorityMenuElementByUserId(@Param("userId") String userId, @Param("menuId") String menuId);

    List<Element> selectAuthorityElementByClientId(@Param("clientId") String clientId);

    List<Element> selectAllElementPermissions();
}