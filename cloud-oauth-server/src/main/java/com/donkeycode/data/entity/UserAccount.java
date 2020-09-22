package com.donkeycode.data.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import com.donkeycode.security.UserGrantedAuthority;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author: liuyadu
 * @date: 2018/11/12 11:35
 * @description:
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
public class UserAccount extends BaseAccount implements Serializable {

    private static final long serialVersionUID = 6717800085953996702L;

    private Collection<Map> roles = new ArrayList<>();
    /**
     * 用户权限
     */
    private Collection<UserGrantedAuthority> authorities = new ArrayList<>();
    /**
     * 第三方账号
     */
    private String thirdParty;

    /**
     * 昵称
     */
    private String nickName;

    /**
     * 头像
     */
    private String avatar;
}
