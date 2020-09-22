package com.donkeycode.data.entity;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnore;

import com.donkeycode.core.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 系统用户-基础信息
 *
 * @author liuyadu
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@Table(name = "base_user")
public class BaseUser extends BaseEntity {

    private static final long serialVersionUID = -735161640894047414L;
    /**
     * 系统用户ID
     */
    @Id
    private Long userId;

    /**
     * 登陆名
     */
    private String userName;

    /**
     * 用户类型:super-超级管理员 normal-普通管理员
     */
    private String userType;

    /**
     * 企业ID
     */
    private Long companyId;

    /**
     * 昵称
     */
    private String nickName;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 描述
     */
    private String userDesc;

    /**
     * 密码
     */
    @JsonIgnore
    private String password;

    /**
     * 状态:0-禁用 1-正常 2-锁定
     */
    private Integer status;

    private Date createTime;

    private Date updateTime;
}
