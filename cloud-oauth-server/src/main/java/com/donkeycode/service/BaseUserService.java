package com.donkeycode.service;

import java.util.List;

import com.donkeycode.boot.IBaseService;
import com.donkeycode.core.page.PageFilter;
import com.donkeycode.core.page.PageResult;
import com.donkeycode.data.entity.BaseUser;
import com.donkeycode.data.entity.UserAccount;

/**
 * 系统用户资料管理
 *
 * @author: liuyadu
 * @date: 2018/10/24 16:38
 * @description:
 */
public interface BaseUserService extends IBaseService<BaseUser> {

    /**
     * 添加用户信息
     *
     * @param baseUser
     * @return
     */
    void addUser(BaseUser baseUser);

    /**
     * 更新系统用户
     *
     * @param baseUser
     * @return
     */
    void updateUser(BaseUser baseUser);

    /**
     * 添加第三方登录用户
     *
     * @param baseUser
     * @param accountType
     * @param
     */
    void addUserThirdParty(BaseUser baseUser, String accountType);

    /**
     * 更新密码
     *
     * @param userId
     * @param password
     */
    void updatePassword(Long userId, String password);

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    PageResult<BaseUser> findListPage(PageFilter pageParams);

    /**
     * 查询列表
     *
     * @return
     */
    List<BaseUser> findAllList();

    /**
     * 根据用户ID获取用户信息
     *
     * @param userId
     * @return
     */
    BaseUser getUserById(Long userId);

    /**
     * 获取用户权限
     *
     * @param userId
     * @return
     */
    UserAccount getUserAccount(Long userId);

    /**
     * 依据登录名查询系统用户信息
     *
     * @param username
     * @return
     */
    BaseUser getUserByUsername(String username);

    /**
     * 支持密码、手机号、email登陆
     * 其他方式没有规则，无法自动识别。需要单独开发
     *
     * @param account
     *     登陆账号
     * @return
     */
    UserAccount login(String account);
}
