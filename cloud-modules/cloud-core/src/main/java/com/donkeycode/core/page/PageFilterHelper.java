package com.donkeycode.core.page;

import com.donkeycode.core.Constants;
import com.donkeycode.core.utils.BeanConvertUtils;
import com.donkeycode.core.utils.ColumnPropertyUtils;
import com.donkeycode.core.utils.String3Utils;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;

/**
 * 分页插件实现
 *
 * @author donkey
 * @since 2019年5月13日
 */

@Getter
@Setter
@Builder
public class PageFilterHelper implements PageFilter {

    public static final String ORDER_DESC = "desc";

    public static final String ORDER_ASC = "asc";

    /**
     * 当前页
     */
    private int pageNo;
    /**
     * 每页显示条数
     */
    private int pageSize;

    private boolean notQueryTotalNum;

    private Constants.OrderMode orderMethod;

    private String orderField;

    /**
     * 查询参会
     */
    private Map<String, Object> params;

    @Override
    public int getPageNo() {
        return pageNo;
    }

    @Override
    public int getPageSize() {
        return pageSize;
    }

    @Override
    public Map<String, Object> getParams() {
        return params;
    }

    @Override
    public <T> T paramsToObject(Class<T> clazz) {
        return BeanConvertUtils.mapToObject(this.params, clazz);
    }

    @Override
    public ListFilter listFilter() {
        return ListFilterHelper.builder()
            .params(getParams())
            .orderField(orderField)
            .orderMethod(orderMethod)
            .build();
    }

    /**
     * 前端排序字段转成SQL 排序语句
     *
     * @return
     */
    /**
     * 前端排序字段转成SQL 排序语句
     *
     * @return
     */
    @Override
    public String getOrderBy() {
        if (StringUtils.isEmpty(orderField)) {
            return "";
        }
        return ColumnPropertyUtils.propertyToColumn(orderField).concat(" " + orderMethod.getMode());
    }

    @Override
    public void setNotQueryTotalNum(Boolean notQueryTotalNum) {
        this.notQueryTotalNum = notQueryTotalNum;
    }

    @Override
    public boolean isQueryTotalNum() {
        return !notQueryTotalNum;
    }

}
