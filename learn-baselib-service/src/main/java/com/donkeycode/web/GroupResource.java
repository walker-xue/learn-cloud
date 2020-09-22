package com.donkeycode.web;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.consts.Constants;
import com.donkeycode.core.response.ObjectResponse;
import com.donkeycode.core.utils.TreeDataUtils;
import com.donkeycode.data.entity.Group;
import com.donkeycode.data.service.IGroupService;
import com.donkeycode.data.service.imp.ResourceAuthorityService;
import com.donkeycode.vo.AuthorityMenuTree;
import com.donkeycode.vo.GroupTree;
import com.donkeycode.vo.GroupUsers;

import tk.mybatis.mapper.entity.Example;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-12 8:49
 */
@RestController
@RequestMapping("group")
class GroupResource extends BaseResource<IGroupService, Group> {

    @Autowired
    ResourceAuthorityService resourceAuthorityBiz;


    @RequestMapping(value = "/{id}/user", method = RequestMethod.PUT)
    ObjectResponse<?> modifiyUsers(@PathVariable int id, String members, String leaders) {
        entityService.modifyGroupUsers(id, members, leaders);
        return new ObjectResponse().rel(true);
    }

    @RequestMapping(value = "/{id}/user", method = RequestMethod.GET)
    ObjectResponse<GroupUsers> getUsers(@PathVariable int id) {
        return new ObjectResponse<GroupUsers>().rel(true).data(entityService.getGroupUsers(id));
    }

    @RequestMapping(value = "/{id}/authority/menu", method = RequestMethod.PUT)
    ObjectResponse<?> modifyMenuAuthority(@PathVariable int id, String menuTrees) {
        String[] menus = menuTrees.split(",");
        entityService.modifyAuthorityMenu(id, menus);
        return new ObjectResponse().rel(true);
    }

    @RequestMapping(value = "/{id}/authority/menu", method = RequestMethod.GET)
    ObjectResponse<List<AuthorityMenuTree>> getMenuAuthority(@PathVariable int id) {
        return new ObjectResponse().data(entityService.getAuthorityMenu(id)).rel(true);
    }

    @RequestMapping(value = "/{id}/authority/element/add", method = RequestMethod.PUT)
    ObjectResponse<?> addElementAuthority(@PathVariable int id, int menuId, int elementId) {
        entityService.modifyAuthorityElement(id, menuId, elementId);
        return new ObjectResponse().rel(true);
    }

    @RequestMapping(value = "/{id}/authority/element/remove", method = RequestMethod.PUT)
    ObjectResponse<?> removeElementAuthority(@PathVariable int id, int menuId, int elementId) {
        entityService.removeAuthorityElement(id, menuId, elementId);
        return new ObjectResponse().rel(true);
    }

    @RequestMapping(value = "/{id}/authority/element", method = RequestMethod.GET)
    ObjectResponse<List<Integer>> getElementAuthority(@PathVariable int id) {
        return new ObjectResponse().data(entityService.getAuthorityElement(id)).rel(true);
    }

    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    List<GroupTree> tree(String name, String groupType) {
        if (StringUtils.isBlank(name) && StringUtils.isBlank(groupType)) {
            return new ArrayList<GroupTree>();
        }
        Example example = new Example(Group.class);
        if (StringUtils.isNotBlank(name)) {
            example.createCriteria().andLike("name", "%" + name + "%");
        }
        if (StringUtils.isNotBlank(groupType)) {
            example.createCriteria().andEqualTo("groupType", groupType);
        }
        return getTree(entityService.selectListByExample(example), Constants.ROOT);
    }

    private List<GroupTree> getTree(List<Group> groups, int root) {
        List<GroupTree> trees = new ArrayList<GroupTree>();
        for (Group group : groups) {
            GroupTree node = new GroupTree();
            node.setLabel(group.getName());
            BeanUtils.copyProperties(group, node);
            trees.add(node);
        }
        return TreeDataUtils.bulid(trees, root);
    }
}
