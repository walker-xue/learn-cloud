package com.donkeycode.rpc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.donkeycode.common.authority.PermissionInfo;
import com.donkeycode.consts.Constants;
import com.donkeycode.core.utils.TreeDataUtils;
import com.donkeycode.data.entity.Element;
import com.donkeycode.data.entity.Menu;
import com.donkeycode.data.entity.User;
import com.donkeycode.data.service.imp.ElementService;
import com.donkeycode.data.service.imp.MenuService;
import com.donkeycode.data.service.imp.UserService;
import com.donkeycode.security.CloudUserDetails;
import com.donkeycode.vo.FrontUser;
import com.donkeycode.vo.MenuTree;

/**
 * Created by ace on 2017/9/12.
 */
@Service
public class PermissionService {

    @Autowired
    UserService userService;
    @Autowired
    MenuService menuService;
    @Autowired
    ElementService elementService;

    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);

    public CloudUserDetails getUserByUsername(String username) {
        CloudUserDetails info = new CloudUserDetails();
        User user = userService.getUserByUsername(username);
        BeanUtils.copyProperties(user, info);
        info.setUserId(user.getId().toString());
        return info;
    }

    public CloudUserDetails validate(String username, String password) {
        CloudUserDetails info = new CloudUserDetails();
        User user = userService.getUserByUsername(username);
        if (encoder.matches(password, user.getPassword())) {
            BeanUtils.copyProperties(user, info);
            info.setUserId(user.getId().toString());
        }
        return info;
    }

    public List<PermissionInfo> getAllPermission() {
        List<Menu> menus = menuService.selectListAll();
        List<PermissionInfo> result = new ArrayList<PermissionInfo>();
        menu2permission(menus, result);
        List<Element> elements = elementService.getAllElementPermissions();
        element2permission(result, elements);
        return result;
    }

    private void menu2permission(List<Menu> menus, List<PermissionInfo> result) {
        PermissionInfo info;
        for (Menu menu : menus) {
            if (StringUtils.isBlank(menu.getHref())) {
                menu.setHref("/" + menu.getCode());
            }
            info = new PermissionInfo();
            info.setCode(menu.getCode());
            info.setType(Constants.RESOURCE_TYPE_MENU);
            info.setName(Constants.RESOURCE_ACTION_VISIT);
            String uri = menu.getHref();
            if (!uri.startsWith("/")) {
                uri = "/" + uri;
            }
            info.setUri(uri);
            info.setMethod(Constants.RESOURCE_REQUEST_METHOD_GET);
            result.add(info);
            info.setMenu(menu.getTitle());
        }
    }

    public List<PermissionInfo> getPermissionByUsername(String username) {
        User user = userService.getUserByUsername(username);
        List<Menu> menus = menuService.getUserAuthorityMenuByUserId(user.getId());
        List<PermissionInfo> result = new ArrayList<PermissionInfo>();
        menu2permission(menus, result);
        List<Element> elements = elementService.getAuthorityElementByUserId(user.getId() + "");
        element2permission(result, elements);
        return result;
    }

    private void element2permission(List<PermissionInfo> result, List<Element> elements) {
        PermissionInfo info;
        for (Element element : elements) {
            info = new PermissionInfo();
            info.setCode(element.getCode());
            info.setType(element.getType());
            info.setUri(element.getUri());
            info.setMethod(element.getMethod());
            info.setName(element.getName());
            info.setMenu(element.getMenuId());
            result.add(info);
        }
    }

    private List<MenuTree> getMenuTree(List<Menu> menus, int root) {
        List<MenuTree> trees = new ArrayList<MenuTree>();
        MenuTree node = null;
        for (Menu menu : menus) {
            node = new MenuTree();
            BeanUtils.copyProperties(menu, node);
            trees.add(node);
        }
        return TreeDataUtils.bulid(trees, root);
    }

    public FrontUser getUserInfo(String token) throws Exception {
        String username = null;
        if (username == null) {
            return null;
        }
        CloudUserDetails user = this.getUserByUsername(username);
        FrontUser frontUser = new FrontUser();
        BeanUtils.copyProperties(user, frontUser);
        List<PermissionInfo> permissionInfos = this.getPermissionByUsername(username);
        Stream<PermissionInfo> menus = permissionInfos.parallelStream().filter((permission) -> {
            return permission.getType().equals(Constants.RESOURCE_TYPE_MENU);
        });
        frontUser.setMenus(menus.collect(Collectors.toList()));
        Stream<PermissionInfo> elements = permissionInfos.parallelStream().filter((permission) -> {
            return !permission.getType().equals(Constants.RESOURCE_TYPE_MENU);
        });
        frontUser.setElements(elements.collect(Collectors.toList()));
        return frontUser;
    }

    public List<MenuTree> getMenusByUsername(String token) throws Exception {
        String username = null;
        if (username == null) {
            return null;
        }
        User user = userService.getUserByUsername(username);
        List<Menu> menus = menuService.getUserAuthorityMenuByUserId(user.getId());
        return getMenuTree(menus, Constants.ROOT);
    }
}
