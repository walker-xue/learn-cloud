package com.donkeycode.core.page;

import com.donkeycode.core.Constants;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import java.util.Map;

/**
 * 分页接口定义
 *
 * @author donkey
 * @since 2019年5月13日
 */
public interface PageFilter {

    // 显示行数
    String PAGE_SIZE = "pageSize";

    // 第几页
    String PAGE_NO = "pageNo";

    /**
     * 获取当前页
     *
     * @return
     */
    int getPageNo();

    /**
     * 设置是否查询总数量
     *
     * @param notQueryTotalNum
     */
    void setNotQueryTotalNum(Boolean notQueryTotalNum);

    /**
     * 设置是否查询总数量
     */
    boolean isQueryTotalNum();

    /**
     * 获取每页中多少条
     *
     * @return
     */
    int getPageSize();

    /**
     * 获取排序字符串
     *
     * @return
     */
    String getOrderBy();

    /**
     * 设置排序字段
     *
     * @return
     */
    void setOrderField(@NotBlank String orderField);

    /**
     * 设置排序方式
     *
     * @param orderMode
     */
    void setOrderMethod(@NotNull Constants.OrderMode orderMode);

    /**
     * 获取查询参数
     *
     * @return
     */
    Map<String, Object> getParams();

    /**
     * 请求参数转化成对象
     *
     * @param clazz
     * @param <T>
     * @return
     */
    <T> T paramsToObject(Class<T> clazz);

    /**
     * 获取List查询参数
     *
     * @return
     */
    ListFilter listFilter();
}
