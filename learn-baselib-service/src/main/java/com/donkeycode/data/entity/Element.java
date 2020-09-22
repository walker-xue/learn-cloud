package com.donkeycode.data.entity;

import java.util.Date;

import javax.persistence.*;

import com.donkeycode.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Table(name = "base_element")
public class Element extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String code;

    private String type;

    private String name;

    private String uri;

    @Column(name = "menu_id")
    private String menuId;

    @Column(name = "parent_id")
    private String parentId;

    private String path;

    private String method;

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
}