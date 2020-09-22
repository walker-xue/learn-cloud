package com.donkeycode.data.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.consts.Constants;
import com.donkeycode.core.collectors.CollectorUtils;
import com.donkeycode.data.entity.Menu;
import com.donkeycode.data.mapper.MenuMapper;
import com.donkeycode.data.service.IMenuService;
import com.github.skunk.data.BaseService;

import tk.mybatis.mapper.weekend.Weekend;
import tk.mybatis.mapper.weekend.WeekendCriteria;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-12 8:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class MenuService extends BaseService<Menu> implements IMenuService {

    @Autowired
    MenuMapper menuMapper;

    @Override
    @Cacheable(key = "permission:menu")
    public List<Menu> selectListAll() {
        return getList(null);
    }

    @Override
    @CacheEvict(value = { "permission:menu", "permission" })
    public int insertSelective(Menu entity) {
        if (Constants.ROOT == entity.getParentId()) {
            entity.setPath("/" + entity.getCode());
        } else {
            Menu parent = selectByKey(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        return mapper.insertSelective(entity);

    }

    @Override
    @CacheEvict(value = { "permission:menu", "permission" })
    public void updateById(Menu entity) {
        if (Constants.ROOT == entity.getParentId()) {
            entity.setPath("/" + entity.getCode());
        } else {
            Menu parent = selectByKey(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        mapper.updateByPrimaryKeySelective(entity);
    }

    @Override
    @CacheEvict(value = { "permission:menu", "permission" })
    public void updateSelectiveById(Menu entity) {
        mapper.updateByPrimaryKeySelective(entity);
    }

    /**
     * 获取用户可以访问的菜单
     *
     * @param id
     * @return
     */
    @Override
    @CacheEvict(key = "permission:menu:u{1}")
    public List<Menu> getUserAuthorityMenuByUserId(int id) {
        return menuMapper.selectAuthorityMenuByUserId(id);
    }

    /**
     * 根据用户获取可以访问的系统
     *
     * @param id
     * @return
     */
    @Override
    public List<Menu> getUserAuthoritySystemByUserId(int id) {
        return menuMapper.selectAuthoritySystemByUserId(id);
    }

    @Override
    public List<Menu> getList(Map<String, String> param) {
        Weekend<Menu> weekend = new Weekend<>(Menu.class);
        WeekendCriteria<Menu, Object> criteria = weekend.weekendCriteria();
        if (CollectorUtils.isNotEmpty(param)) {
            if (StringUtils.isNotBlank(param.get("title"))) {
                criteria.andLike(Menu::getTitle, "%" + param.get("title") + "%");
            }

        }
        return mapper.selectByExample(weekend);
    }
}
