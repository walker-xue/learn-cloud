package com.donkeycode.core.exception;

import com.donkeycode.core.exception.BaseException;

/**
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class FactoryException extends BaseException {

    private static final long serialVersionUID = -1;

    public FactoryException(String message) {
        super(message);
    }

    public FactoryException(String message, Throwable cause) {
        super(message);
    }
}
