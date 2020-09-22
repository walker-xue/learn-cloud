package com.donkeycode.core.jwt;

/**
 * Token 接口定义
 * 
 * 
 * @author yanjun.xue
 * @since 2019年6月27日
 */
public interface UserJwt {
    /**
     * 获取用户名
     * @return
     */
    String getUniqueName();

    /**
     * 获取用户ID
     * @return
     */
    String getId();

    /**
     * 获取名称
     * @return
     */
    String getName();
}
