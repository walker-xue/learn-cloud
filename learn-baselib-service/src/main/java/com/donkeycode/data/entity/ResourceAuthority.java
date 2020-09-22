package com.donkeycode.data.entity;

import java.util.Date;
import javax.persistence.*;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Table(name = "base_resource_authority")
public class ResourceAuthority extends BaseEntity {
    @Id
    private Integer id;

    @Column(name = "authority_id")
    private String authorityId;

    @Column(name = "authority_type")
    private String authorityType;

    @Column(name = "resource_id")
    private String resourceId;

    @Column(name = "resource_type")
    private String resourceType;

    @Column(name = "parent_id")
    private String parentId;

    private String path;

    private String description;

    @Column(name = "crt_time")
    private Date crtTime;

    @Column(name = "crt_user")
    private String crtUser;

    @Column(name = "crt_name")
    private String crtName;

    @Column(name = "crt_host")
    private String crtHost;

    private String attr1;

    private String attr2;

    private String attr3;

    private String attr4;

    private String attr5;

    private String attr6;

    private String attr7;

    private String attr8;

    public ResourceAuthority() {
    }

    public ResourceAuthority(String authorityType, String resourceType) {
        this.authorityType = authorityType;
        this.resourceType = resourceType;
    }

}