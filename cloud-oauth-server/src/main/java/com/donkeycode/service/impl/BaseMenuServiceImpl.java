package com.donkeycode.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.core.page.PageFilter;
import com.donkeycode.core.page.PageResult;
import com.donkeycode.data.entity.BaseMenu;
import com.donkeycode.data.mapper.BaseMenuMapper;
import com.donkeycode.security.exception.OpenAlertException;
import com.github.pagehelper.page.PageParams;

import lombok.extern.slf4j.Slf4j;

/**
 * @author liuyadu
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class BaseMenuServiceImpl extends BaseServiceImpl<BaseMenuMapper, BaseMenu> implements BaseMenuService {

    @Autowired
    private BaseMenuMapper baseMenuMapper;
    @Autowired
    private BaseAuthorityService baseAuthorityService;

    @Autowired
    private BaseActionService baseActionService;

    @Value("${spring.application.name}")
    private String DEFAULT_SERVICE_ID;

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    @Override
    public PageResult<BaseMenu> findListPage(PageFilter pageFilter) {



        BaseMenu query = pageFilter.paramsToObject(BaseMenu.class);
        QueryWrapper<BaseMenu> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .likeRight(ObjectUtils.isNotEmpty(query.getMenuCode()), BaseMenu::getMenuCode, query.getMenuCode())
                .likeRight(ObjectUtils.isNotEmpty(query.getMenuName()), BaseMenu::getMenuName, query.getMenuName());



        return baseMenuMapper.selectPage(new Page(pageParams.getPage(), pageParams.getLimit()), queryWrapper);
    }

    /**
     * 查询列表
     *
     * @return
     */
    @Override
    public List<BaseMenu> findAllList() {
        List<BaseMenu> list = baseMenuMapper.selectList(new QueryWrapper<>());
        //根据优先级从小到大排序
        list.sort((BaseMenu h1, BaseMenu h2) -> h1.getPriority().compareTo(h2.getPriority()));
        return list;
    }

    /**
     * 根据主键获取菜单
     *
     * @param menuId
     * @return
     */
    @Override
    public BaseMenu getMenu(Long menuId) {
        return baseMenuMapper.selectById(menuId);
    }

    /**
     * 检查菜单编码是否存在
     *
     * @param menuCode
     * @return
     */
    @Override
    public Boolean isExist(String menuCode) {
        QueryWrapper<BaseMenu> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .eq(BaseMenu::getMenuCode, menuCode);
        int count = baseMenuMapper.selectCount(queryWrapper);
        return count > 0 ? true : false;
    }

    /**
     * 添加菜单资源
     *
     * @param menu
     * @return
     */
    @Override
    public BaseMenu addMenu(BaseMenu menu) {
        if (isExist(menu.getMenuCode())) {
            throw new OpenAlertException(String.format("%s编码已存在!", menu.getMenuCode()));
        }
        if (menu.getParentId() == null) {
            menu.setParentId(0L);
        }
        if (menu.getPriority() == null) {
            menu.setPriority(0);
        }
        if (menu.getStatus() == null) {
            menu.setStatus(1);
        }
        if (menu.getIsPersist() == null) {
            menu.setIsPersist(0);
        }
        menu.setServiceId(DEFAULT_SERVICE_ID);
        menu.setCreateTime(new Date());
        menu.setUpdateTime(menu.getCreateTime());
        baseMenuMapper.insert(menu);
        // 同步权限表里的信息
        baseAuthorityService.saveOrUpdateAuthority(menu.getMenuId(), ResourceType.menu);
        return menu;
    }

    /**
     * 修改菜单资源
     *
     * @param menu
     * @return
     */
    @Override
    public BaseMenu updateMenu(BaseMenu menu) {
        BaseMenu saved = getMenu(menu.getMenuId());
        if (saved == null) {
            throw new OpenAlertException(String.format("%s信息不存在!", menu.getMenuId()));
        }
        if (!saved.getMenuCode().equals(menu.getMenuCode())) {
            // 和原来不一致重新检查唯一性
            if (isExist(menu.getMenuCode())) {
                throw new OpenAlertException(String.format("%s编码已存在!", menu.getMenuCode()));
            }
        }
        if (menu.getParentId() == null) {
            menu.setParentId(0l);
        }
        if (menu.getPriority() == null) {
            menu.setPriority(0);
        }
        menu.setUpdateTime(new Date());
        baseMenuMapper.updateById(menu);
        // 同步权限表里的信息
        baseAuthorityService.saveOrUpdateAuthority(menu.getMenuId(), ResourceType.menu);
        return menu;
    }


    /**
     * 移除菜单
     *
     * @param menuId
     * @return
     */
    @Override
    public void removeMenu(Long menuId) {
        BaseMenu menu = getMenu(menuId);
        if (menu != null && menu.getIsPersist().equals(BaseConstants.ENABLED)) {
            throw new OpenAlertException(String.format("保留数据,不允许删除!"));
        }
        // 移除菜单权限
        baseAuthorityService.removeAuthority(menuId, ResourceType.menu);
        // 移除功能按钮和相关权限
        baseActionService.removeByMenuId(menuId);
        // 移除菜单信息
        baseMenuMapper.deleteById(menuId);
    }
}
