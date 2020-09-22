package com.donkeycode.core.page;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.donkeycode.core.Constants;
import com.donkeycode.core.utils.BeanConvertUtils;
import com.donkeycode.core.utils.ColumnPropertyUtils;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

/**
 * 分页插件实现
 *
 * @author donkey
 * @since 2019年5月13日
 */

@Getter
@Setter
@Builder
public class ListFilterHelper implements ListFilter {

    // "排序方式"
    private Constants.OrderMode orderMethod;
    // "排序字段"
    private String orderField;
    // "是否排序，默认值需要排序"
    private boolean isOrderBy = true;

    /**
     * 查询参会
     */
    private Map<String, Object> params;

    @Override
    public Map<String, Object> getParams() {
        return params;
    }

    /**
     * @param clazz
     * @param <T>
     * @return
     */
    @Override
    public <T> T paramsToObject(Class<T> clazz) {
        return BeanConvertUtils.mapToObject(params, clazz);
    }

    /**
     * 前端排序字段转成SQL 排序语句
     *
     * @return
     */
    @Override
    public String getOrderBy() {
        if (StringUtils.isEmpty(orderField)) {
            return StringUtils.EMPTY;
        }
        return ColumnPropertyUtils.propertyToColumn(orderField).concat(" " + orderMethod.getMode());
    }

    @Override
    public void setIsOrderBy(boolean isOrderBy) {
        this.isOrderBy = isOrderBy;
    }

    @Override
    public boolean isOrderBy() {
        return isOrderBy;
    }
}
