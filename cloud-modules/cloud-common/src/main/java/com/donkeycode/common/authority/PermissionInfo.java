package com.donkeycode.common.authority;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;


/**
 * 权限
 * 
 * @author yanjun.xue
 * @since 2019年6月27日
 */
@SuppressWarnings("serial")
@Setter
@Getter
public class PermissionInfo extends BaseEntity {

    private String code;
    private String type;
    private String uri;
    private String method;
    private String name;
    private String menu;
}
