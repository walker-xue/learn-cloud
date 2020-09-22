package com.donkeycode.core.exception;

/**
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class ClassException extends BaseException {

    private static final long serialVersionUID = -1276435753880524349L;

    public ClassException() {
        super();
    }

    public ClassException(String message) {
        super(message);
    }

    public ClassException(String message, Throwable cause) {
        super(message, cause);
    }

    public ClassException(Throwable cause) {
        super(cause);
    }

}
