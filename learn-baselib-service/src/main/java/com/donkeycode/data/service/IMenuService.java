package com.donkeycode.data.service;

import java.util.List;
import java.util.Map;

import com.donkeycode.data.entity.Menu;
import com.github.skunk.data.IBaseService;

/**
 * 注解工具
 *
 * @author donkey
 * @date ${date}
 * @since 0.0.1
 */
public interface IMenuService extends IBaseService<Menu> {

    List<Menu> selectListAll();

    int insertSelective(Menu entity);

    void updateById(Menu entity);

    void updateSelectiveById(Menu entity);

    List<Menu> getUserAuthorityMenuByUserId(int id);

    List<Menu> getUserAuthoritySystemByUserId(int id);

    List<Menu> getList(Map<String, String> param);
}
