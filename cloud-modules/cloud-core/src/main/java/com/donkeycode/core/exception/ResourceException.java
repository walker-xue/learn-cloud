package com.donkeycode.core.exception;

/**
 * 资源异常
 *
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class ResourceException extends BaseException {

    private static final long serialVersionUID = -1L;

    public ResourceException(String message) {
        super(message);
    }

    public ResourceException(String message, Throwable cause) {
        super(message);
    }

}