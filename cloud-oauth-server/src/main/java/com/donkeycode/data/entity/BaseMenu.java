package com.donkeycode.data.entity;

import javax.persistence.Id;
import javax.persistence.Table;

import com.donkeycode.core.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 系统资源-菜单信息
 *
 * @author: liuyadu
 * @date: 2018/10/24 16:21
 * @description:
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@Table(name = "base_menu")
public class BaseMenu extends BaseEntity {

    private static final long serialVersionUID = -4414780909980518788L;
    /**
     * 菜单Id
     */
    @Id
    private Long menuId;

    /**
     * 菜单编码
     */
    private String menuCode;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 图标
     */
    private String icon;

    /**
     * 父级菜单
     */
    private Long parentId;

    /**
     * 请求协议:/,http://,https://
     */
    private String scheme;

    /**
     * 请求路径
     */
    private String path;

    /**
     * 打开方式:_self窗口内,_blank新窗口
     */
    private String target;

    /**
     * 优先级 越小越靠前
     */
    private Integer priority;

    /**
     * 描述
     */
    private String menuDesc;

    /**
     * 状态:0-无效 1-有效
     */
    private Integer status;

    /**
     * 保留数据0-否 1-是 不允许删除
     */
    private Integer isPersist;

    /**
     * 服务ID
     */
    private String serviceId;
}
