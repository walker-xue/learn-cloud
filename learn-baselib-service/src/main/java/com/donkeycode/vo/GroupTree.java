package com.donkeycode.vo;

import com.donkeycode.core.entity.TreeNode;

import lombok.Getter;
import lombok.Setter;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-17 15:21
 */
@Setter
@Getter
public class GroupTree extends TreeNode {

    private static final long serialVersionUID = 1L;

    private String label;
    private String name;

}
