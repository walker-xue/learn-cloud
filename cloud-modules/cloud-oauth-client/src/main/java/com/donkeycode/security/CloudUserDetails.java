package com.donkeycode.security;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

/**
 * 自定义认证用户身份详情信息
 *
 * @author liuyadu
 */
public class CloudUserDetails implements UserDetails {

    private static final long serialVersionUID = -123308657146774881L;

    /**
     * 用户ID
     */
    @Getter
    @Setter
    private String userId;
    /**
     * 登录名
     */
    private String username;
    /**
     * 密码
     */
    private String password;

    /**
     * 是否已锁定
     */
    private boolean accountNonLocked;
    /**
     * 是否已过期
     */
    private boolean accountNonExpired;
    /**
     * 是否启用
     */
    private boolean enabled;
    /**
     * 密码是否已过期
     */
    private boolean credentialsNonExpired;
    /**
     * 认证客户端ID
     */
    private String clientId;
    /**
     * 认证中心域,适用于区分多用户源,多认证中心域
     */
    @Setter
    @Getter
    private String domain;

    /**
     * 昵称
     */
    @Setter
    @Getter
    private String nickName;

    /**
     * 头像
     */
    @Setter
    @Getter
    private String avatar;

    /**
     * 账户Id
     */
    @Setter
    @Getter
    private Long accountId;

    /***
     * 账户类型
     */
    @Setter
    @Getter
    private String accountType;

    /**
     * 用户附加属性
     */
    private Map<String, Object> attrs;

    /**
     * 只是客户端模式.不包含用户信息
     *
     * @return
     */
    public Boolean isClientOnly() {
        return clientId != null && username == null;
    }

    /**
     * 用户权限
     */
    private Collection<? extends GrantedAuthority> authorities;

    /**
     * 获取用户的权限列表
     *
     * @return
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (null == authorities) {
            return Collections.EMPTY_LIST;
        }
        return this.authorities;
    }

    @JsonIgnore
    @JSONField(serialize = false)
    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.accountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.accountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAccountNonLocked(boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public void setAccountNonExpired(boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void setCredentialsNonExpired(boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
        this.authorities = authorities;
    }



    public Map<String, Object> getAttrs() {
        if (attrs == null) {
            return Collections.emptyMap();
        }
        return attrs;
    }

    public void setAttrs(Map<String, Object> attrs) {
        this.attrs = attrs;
    }
}
