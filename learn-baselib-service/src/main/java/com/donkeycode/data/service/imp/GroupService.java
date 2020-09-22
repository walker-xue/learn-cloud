package com.donkeycode.data.service.imp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.consts.Constants;
import com.donkeycode.core.collectors.CollectorUtils;
import com.donkeycode.data.entity.Group;
import com.donkeycode.data.entity.Menu;
import com.donkeycode.data.entity.ResourceAuthority;
import com.donkeycode.data.mapper.GroupMapper;
import com.donkeycode.data.mapper.MenuMapper;
import com.donkeycode.data.mapper.ResourceAuthorityMapper;
import com.donkeycode.data.mapper.UserMapper;
import com.donkeycode.data.service.IGroupService;
import com.donkeycode.vo.AuthorityMenuTree;
import com.donkeycode.vo.GroupUsers;
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
public class GroupService extends BaseService<Group> implements IGroupService {

    @Autowired
    GroupMapper groupMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    ResourceAuthorityMapper resourceAuthorityMapper;
    @Autowired
    MenuMapper menuMapper;

    @Override
    public int insertSelective(Group entity) {
        if (Constants.ROOT == entity.getParentId()) {
            entity.setPath("/" + entity.getCode());
        } else {
            Group parent = selectByKey(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        return super.insertSelective(entity);
    }

    @Override
    public void updateById(Group entity) {
        if (Constants.ROOT == entity.getParentId()) {
            entity.setPath("/" + entity.getCode());
        } else {
            Group parent = selectByKey(entity.getParentId());
            entity.setPath(parent.getPath() + "/" + entity.getCode());
        }
        super.updateByKeySelective(entity);
    }

    @Override
    public List<Group> getList(Map<String, String> param) {
        Weekend<Group> weekend = new Weekend<Group>(Group.class);
        WeekendCriteria<Group, Object> criteria = weekend.weekendCriteria();
        if (CollectorUtils.isNotEmpty(param)) {
            if (StringUtils.isNotBlank(param.get("name"))) {
                criteria.andLike("name", "%" + param.get("name") + "%");
            }
            if (StringUtils.isNotBlank(param.get("groupType"))) {
                criteria.andEqualTo("groupType", param.get("groupType"));
            }
        }
        return mapper.selectByExample(weekend);
    }

    /**
     * 获取群组关联用户
     *
     * @param groupId
     * @return
     */
    @Override
    public GroupUsers getGroupUsers(int groupId) {
        return new GroupUsers(userMapper.selectMemberByGroupId(groupId), userMapper.selectLeaderByGroupId(groupId));
    }

    /**
     * 变更群主所分配用户
     *
     * @param groupId
     * @param members
     * @param leaders
     */
    @Override
    @CacheEvict(value = "permission")
    public void modifyGroupUsers(int groupId, String members, String leaders) {
        groupMapper.deleteGroupLeadersById(groupId);
        groupMapper.deleteGroupMembersById(groupId);
        if (!StringUtils.isEmpty(members)) {
            String[] mem = members.split(",");
            for (String m : mem) {
                groupMapper.insertGroupMembersById(groupId, Integer.parseInt(m));
            }
        }
        if (!StringUtils.isEmpty(leaders)) {
            String[] mem = leaders.split(",");
            for (String m : mem) {
                groupMapper.insertGroupLeadersById(groupId, Integer.parseInt(m));
            }
        }
    }

    /**
     * 变更群组关联的菜单
     *
     * @param groupId
     * @param menus
     */
    @Override
    @CacheEvict(value = { "permission:menu", "permission:u" })
    public void modifyAuthorityMenu(int groupId, String[] menus) {
        resourceAuthorityMapper.deleteByAuthorityIdAndResourceType(groupId + "", Constants.RESOURCE_TYPE_MENU);
        List<Menu> menuList = menuMapper.selectAll();
        Map<String, String> map = new HashMap<String, String>();
        for (Menu menu : menuList) {
            map.put(menu.getId().toString(), menu.getParentId().toString());
        }
        Set<String> relationMenus = new HashSet<String>();
        relationMenus.addAll(Arrays.asList(menus));
        ResourceAuthority authority = null;
        for (String menuId : menus) {
            findParentID(map, relationMenus, menuId);
        }
        for (String menuId : relationMenus) {
            authority = new ResourceAuthority(Constants.AUTHORITY_TYPE_GROUP, Constants.RESOURCE_TYPE_MENU);
            authority.setAuthorityId(groupId + "");
            authority.setResourceId(menuId);
            authority.setParentId("-1");
            resourceAuthorityMapper.insertSelective(authority);
        }
    }

    private void findParentID(Map<String, String> map, Set<String> relationMenus, String id) {
        String parentId = map.get(id);
        if (String.valueOf(Constants.ROOT).equals(id)) {
            return;
        }
        relationMenus.add(parentId);
        findParentID(map, relationMenus, parentId);
    }

    /**
     * 分配资源权限
     *
     * @param groupId
     * @param menuId
     * @param elementId
     */
    @Override
    @CacheEvict(value = { "permission:ele", "permission:u" })
    public void modifyAuthorityElement(int groupId, int menuId, int elementId) {
        ResourceAuthority authority = new ResourceAuthority(Constants.AUTHORITY_TYPE_GROUP, Constants.RESOURCE_TYPE_BTN);
        authority.setAuthorityId(groupId + "");
        authority.setResourceId(elementId + "");
        authority.setParentId("-1");
        resourceAuthorityMapper.insertSelective(authority);
    }

    /**
     * 移除资源权限
     *
     * @param groupId
     * @param menuId
     * @param elementId
     */
    @Override
    @CacheEvict(value = { "permission:ele", "permission:u" })
    public void removeAuthorityElement(int groupId, int menuId, int elementId) {
        ResourceAuthority authority = new ResourceAuthority();
        authority.setAuthorityId(groupId + "");
        authority.setResourceId(elementId + "");
        authority.setParentId("-1");
        resourceAuthorityMapper.delete(authority);
    }

    /**
     * 获取群主关联的菜单
     *
     * @param groupId
     * @return
     */
    @Override
    public List<AuthorityMenuTree> getAuthorityMenu(int groupId) {
        List<Menu> menus = menuMapper.selectMenuByAuthorityId(String.valueOf(groupId), Constants.AUTHORITY_TYPE_GROUP);
        List<AuthorityMenuTree> trees = new ArrayList<AuthorityMenuTree>();
        AuthorityMenuTree node = null;
        for (Menu menu : menus) {
            node = new AuthorityMenuTree();
            node.setText(menu.getTitle());
            BeanUtils.copyProperties(menu, node);
            trees.add(node);
        }
        return trees;
    }

    /**
     * 获取群组关联的资源
     *
     * @param groupId
     * @return
     */
    @Override
    public List<Integer> getAuthorityElement(int groupId) {
        ResourceAuthority authority = new ResourceAuthority(Constants.AUTHORITY_TYPE_GROUP, Constants.RESOURCE_TYPE_BTN);
        authority.setAuthorityId(groupId + "");
        List<ResourceAuthority> authorities = resourceAuthorityMapper.select(authority);
        List<Integer> ids = new ArrayList<Integer>();
        for (ResourceAuthority auth : authorities) {
            ids.add(Integer.parseInt(auth.getResourceId()));
        }
        return ids;
    }
}
