package com.donkeycode.data.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import com.donkeycode.consts.Constants;
import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Table(name = "base_group")
public class Group extends BaseEntity {
    @Id
    private Integer id;

    private String code;

    private String name;

    @Column(name = "parent_id")
    private Integer parentId;

    private String path;

    private String type;

    @Column(name = "group_type")
    private Integer groupType = Constants.DEFAULT_GROUP_TYPE;

    private String description;

    @Column(name = "crt_time")
    private Date crtTime;

    @Column(name = "crt_user")
    private String crtUser;

    @Column(name = "crt_name")
    private String crtName;

    @Column(name = "crt_host")
    private String crtHost;

    @Column(name = "upd_time")
    private Date updTime;

    @Column(name = "upd_user")
    private String updUser;

    @Column(name = "upd_name")
    private String updName;

    @Column(name = "upd_host")
    private String updHost;

    private String attr1;
    private String attr2;
    private String attr3;
    private String attr4;
    private String attr5;
    private String attr6;
    private String attr7;
    private String attr8;

}