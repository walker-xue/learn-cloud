package com.donkeycode.core.entity;

import java.util.ArrayList;
import java.util.List;

import com.donkeycode.core.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * @author yanjun.xue
 * @since 2019年6月28日
 */
@Setter
@Getter
public class TreeNode extends BaseEntity {

    private static final long serialVersionUID = 1L;

    protected int id;
    protected int parentId;
    protected List<TreeNode> children = new ArrayList<TreeNode>();

    public void add(TreeNode node) {
        children.add(node);
    }
}
