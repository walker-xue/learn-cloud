package com.donkeycode.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.consts.Constants;
import com.donkeycode.core.utils.TreeDataUtils;
import com.donkeycode.data.entity.Menu;
import com.donkeycode.data.service.IMenuService;
import com.donkeycode.data.service.IUserService;
import com.donkeycode.vo.AuthorityMenuTree;
import com.donkeycode.vo.MenuTree;

import tk.mybatis.mapper.entity.Example;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-12 8:49
 */
@RestController
@RequestMapping("menu")
public class MenuResource extends BaseResource<IMenuService, Menu> {

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public List<MenuTree> getTree(String title) {
        List<Menu> menus = entityService.getList(HttpParamUtils.requestToMap(request));
        return getMenuTree(menus, Constants.ROOT);
    }

    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public List<Menu> getSystem() {
        Menu menu = new Menu();
        menu.setParentId(Constants.ROOT);
        return entityService.selectList(menu);
    }

    @RequestMapping(value = "/menuTree", method = RequestMethod.GET)
    public List<MenuTree> listMenu(Integer parentId) {
        try {
            if (parentId == null) {
                parentId = this.getSystem().get(0).getId();
            }
        } catch (Exception e) {
            return new ArrayList<MenuTree>();
        }
        Example example = new Example(Menu.class);
        Menu parent = entityService.selectByKey(parentId);
        example.createCriteria().andLike("path", parent.getPath() + "%").andNotEqualTo("id", parent.getId());
        return getMenuTree(entityService.selectListByExample(example), parent.getId());
    }

    @RequestMapping(value = "/authorityTree", method = RequestMethod.GET)
    public List<AuthorityMenuTree> listAuthorityMenu() {
        List<AuthorityMenuTree> trees = new ArrayList<AuthorityMenuTree>();
        AuthorityMenuTree node = null;
        for (Menu menu : entityService.selectListAll()) {
            node = new AuthorityMenuTree();
            node.setText(menu.getTitle());
            BeanUtils.copyProperties(menu, node);
            trees.add(node);
        }
        return TreeDataUtils.bulid(trees, Constants.ROOT);
    }

    @RequestMapping(value = "/user/authorityTree", method = RequestMethod.GET)
    public List<MenuTree> listUserAuthorityMenu(Integer parentId) {
        int userId = userService.getUserByUsername(getCurrentUserName()).getId();
        try {
            if (parentId == null) {
                parentId = this.getSystem().get(0).getId();
            }
        } catch (Exception e) {
            return new ArrayList<>();
        }
        return getMenuTree(entityService.getUserAuthorityMenuByUserId(userId), parentId);
    }

    @RequestMapping(value = "/user/system", method = RequestMethod.GET)
    public List<Menu> listUserAuthoritySystem() {
        int userId = userService.getUserByUsername(getCurrentUserName()).getId();
        return entityService.getUserAuthoritySystemByUserId(userId);
    }

    private List<MenuTree> getMenuTree(List<Menu> menus, int root) {
        List<MenuTree> trees = new ArrayList<MenuTree>();
        MenuTree node = null;
        for (Menu menu : menus) {
            node = new MenuTree();
            BeanUtils.copyProperties(menu, node);
            node.setLabel(menu.getTitle());
            trees.add(node);
        }
        return TreeDataUtils.bulid(trees, root);
    }

}
