package com.donkeycode.data.entity;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import com.donkeycode.core.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 系统应用-基础信息
 *
 * @author liuyadu
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@Table(name = "app")
public class BaseApp extends BaseEntity {

    @Id
    private String appId;

    /**
     * API访问key
     */
    private String apiKey;
    /**
     * API访问密钥
     */
    private String secretKey;

    /**
     * app类型：server-服务应用 app-手机应用 pc-PC网页应用 wap-手机网页应用
     */
    private String appType;

    /**
     * 应用图标
     */
    private String appIcon;

    /**
     * app名称
     */
    private String appName;

    /**
     * app英文名称
     */
    private String appNameEn;
    /**
     * 移动应用操作系统：ios-苹果 android-安卓
     */
    private String appOs;

    /**
     * 用户ID:默认为0
     */
    private String developerId;

    /**
     * app描述
     */
    private String appDesc;

    /**
     * 官方网址
     */
    private String website;

    /**
     * 状态:0-无效 1-有效
     */
    private Integer status;

    /**
     * 保留数据0-否 1-是 不允许删除
     */
    private Integer isPersist;

    private Date createTime;

    private Date updateTime;
}
