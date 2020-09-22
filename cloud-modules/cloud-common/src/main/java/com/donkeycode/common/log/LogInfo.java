package com.donkeycode.common.log;

import java.util.Date;

import com.donkeycode.core.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 日志信息
 * 
 * @author yanjun.xue
 * @since 2019年6月27日
 */
@SuppressWarnings("serial")
@Setter
@Getter
public class LogInfo extends BaseEntity {

    private String menu;
    private String opt;
    private String uri;
    private Long crtTime;
    private String crtUser;
    private String crtName;
    private String crtHost;
    private String body;

    public LogInfo() {
    }

    public LogInfo(String menu, String option, String uri, Date crtTime, String crtUser, String crtName, String crtHost, String body) {
        this.menu = menu;
        this.opt = option;
        this.uri = uri;
        this.crtTime = crtTime.getTime();
        this.crtUser = crtUser;
        this.crtName = crtName;
        this.crtHost = crtHost;
        this.body = body;
    }
}
