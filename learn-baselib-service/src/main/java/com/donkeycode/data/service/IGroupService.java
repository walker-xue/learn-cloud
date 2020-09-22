package com.donkeycode.data.service;

import java.util.List;
import java.util.Map;

import com.donkeycode.data.entity.Group;
import com.donkeycode.vo.AuthorityMenuTree;
import com.donkeycode.vo.GroupUsers;
import com.github.skunk.data.IBaseService;

/**
 * 注解工具
 *
 * @author donkey
 * @date ${date}
 * @since 0.0.1
 */
public interface IGroupService extends IBaseService<Group> {

    int insertSelective(Group entity);

    void updateById(Group entity);

    List<Group> getList(Map<String, String> param);

    GroupUsers getGroupUsers(int groupId);

    void modifyGroupUsers(int groupId, String members, String leaders);

    void modifyAuthorityMenu(int groupId, String[] menus);

    void modifyAuthorityElement(int groupId, int menuId, int elementId);

    void removeAuthorityElement(int groupId, int menuId, int elementId);

    List<AuthorityMenuTree> getAuthorityMenu(int groupId);

    List<Integer> getAuthorityElement(int groupId);
}
