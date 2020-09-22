package com.donkeycode.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.data.entity.Menu;
import com.donkeycode.data.entity.User;
import com.donkeycode.data.service.IMenuService;
import com.donkeycode.data.service.IUserService;
import com.donkeycode.rpc.service.PermissionService;
import com.donkeycode.vo.FrontUser;
import com.donkeycode.vo.MenuTree;

/**
 * 用户资源接口
 *
 * @author wanghaobin
 * @create 2017-06-08 11:51
 */
@RestController
@RequestMapping("user")
public class UserResource extends BaseResource<IUserService, User> {

    @Autowired
    PermissionService permissionService;
    @Autowired
    IMenuService menuService;

    @GetMapping(value = "/front/info")
    ResponseEntity<?> getUserInfo(String token) throws Exception {
        FrontUser userInfo = permissionService.getUserInfo(token);
        if (userInfo == null) {
            return ResponseEntity.status(401).body(false);
        } else {
            return ResponseEntity.ok(userInfo);
        }
    }

    @GetMapping(value = "/front/menus")
    List<MenuTree> getMenusByUsername(String token) throws Exception {
        return permissionService.getMenusByUsername(token);
    }

    @GetMapping(value = "/front/menu/all")
    List<Menu> getAllMenus() {
        return menuService.selectListAll();
    }
}
