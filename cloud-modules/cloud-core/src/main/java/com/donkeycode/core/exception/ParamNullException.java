package com.donkeycode.core.exception;

/**
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class ParamNullException extends BaseException {

    private static final long serialVersionUID = -1276435753880524349L;

    public ParamNullException() {
        super();
    }

    public ParamNullException(String message) {
        super(message);
    }

    public ParamNullException(String message, Throwable cause) {
        super(message, cause);
    }

    public ParamNullException(Throwable cause) {
        super(cause);
    }

}
