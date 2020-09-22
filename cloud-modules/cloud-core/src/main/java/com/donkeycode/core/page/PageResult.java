package com.donkeycode.core.page;

import java.util.Collections;
import java.util.List;

import com.donkeycode.core.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * @param <E>
 * @author donkey
 * @since 2019年5月13日
 */
@SuppressWarnings("serial")
@Getter
@Setter
public class PageResult<E> extends BaseEntity {

    public final long totalCount;
    public final List<E> list;
    private final List<?> footer;
    public int pageNo;
    public int pageSize;

    public PageResult() {
        this.totalCount = 0;
        this.list = Collections.emptyList();
        this.footer = Collections.emptyList();
    }

    public PageResult(long total, List<E> list) {
        this.totalCount = total;
        this.list = list;
        this.footer = Collections.emptyList();
    }

    public PageResult(long total, List<E> list, List<?> footer) {
        this.totalCount = total;
        this.list = list;
        this.footer = footer;
    }
}
