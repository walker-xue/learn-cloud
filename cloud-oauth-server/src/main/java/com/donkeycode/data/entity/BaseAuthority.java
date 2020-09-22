package com.donkeycode.data.entity;

import javax.persistence.Id;
import javax.persistence.Table;

import com.donkeycode.core.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 系统权限-菜单权限、操作权限、API权限
 *
 * @author liuyadu
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@Table(name = "base_authority")
public class BaseAuthority extends BaseEntity {

    private static final long serialVersionUID = 1L;

    @Id
    private Long authorityId;

    /**
     * 权限标识
     */
    private String authority;

    /**
     * 菜单资源ID
     */
    private Long menuId;

    /**
     * API资源ID
     */
    private Long apiId;

    /**
     * 操作资源ID
     */
    private Long actionId;

    /**
     * 状态
     */
    private Integer status;


}
