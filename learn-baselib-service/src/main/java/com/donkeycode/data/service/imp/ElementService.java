package com.donkeycode.data.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.core.collectors.CollectorUtils;
import com.donkeycode.data.entity.Element;
import com.donkeycode.data.mapper.ElementMapper;
import com.donkeycode.data.service.IElementService;
import com.github.skunk.data.BaseService;

import tk.mybatis.mapper.weekend.Weekend;
import tk.mybatis.mapper.weekend.WeekendCriteria;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-23 20:27
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ElementService extends BaseService<Element> implements IElementService {

    @Autowired
    ElementMapper elementMapper;

    @Override
    @Cacheable(key = "permission:ele:u{1}")
    public List<Element> getAuthorityElementByUserId(String userId) {
        return elementMapper.selectAuthorityElementByUserId(userId);
    }

    @Override
    public List<Element> getAuthorityElementByUserId(String userId, String menuId) {
        return elementMapper.selectAuthorityMenuElementByUserId(userId, menuId);
    }

    @Override
    @Cacheable(key = "permission:ele")
    public List<Element> getAllElementPermissions() {
        return elementMapper.selectAllElementPermissions();
    }

    @Override
    @CacheEvict(value = { "permission:ele", "permission" })
    public void save(Element entity) {
        super.insertSelective(entity);
    }

    @Override
    @CacheEvict(value = { "permission:ele", "permission" })
    public void updateSelectiveById(Element entity) {
        super.updateByKey(entity);
    }

    @Override
    public List<Element> getList(Map<String, String> param) {
        Weekend<Element> weekend = new Weekend<>(Element.class);
        WeekendCriteria<Element, Object> criteria = weekend.weekendCriteria();
        if (CollectorUtils.isNotEmpty(param)) {
            if (StringUtils.isNotBlank(param.get("name"))) {
                criteria.andLike(Element::getName, "%" + param.get("name") + "%");
            }
            if (StringUtils.isNotBlank(param.get("menuId"))) {
                criteria.andLike(Element::getMenuId, "%" + param.get("menuId") + "%");
            }
        }
        return mapper.selectByExample(weekend);
    }
}
