package com.donkeycode.vo;

import com.donkeycode.core.entity.TreeNode;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by Ace on 2017/6/12.
 */
@Setter
@Getter
public class MenuTree extends TreeNode {

    private static final long serialVersionUID = 1L;

    private String icon;
    private String title;
    private String href;
    private boolean spread = false;
    private String path;
    private String component;
    private String authority;
    private String redirect;
    private String code;
    private String type;
    private String label;

    public MenuTree() {
    }

    public MenuTree(int id, String name, int parentId) {
        this.id = id;
        this.parentId = parentId;
        this.title = name;
        this.label = name;
    }

    public MenuTree(int id, String name, MenuTree parent) {
        this.id = id;
        this.parentId = parent.getId();
        this.title = name;
        this.label = name;
    }

}
