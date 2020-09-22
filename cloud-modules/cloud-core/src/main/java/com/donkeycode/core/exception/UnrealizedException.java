package com.donkeycode.core.exception;

/**
 * 未实现异常
 *
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class UnrealizedException extends RuntimeException {

    private static final long serialVersionUID = -8101702898478323573L;

    public UnrealizedException() {
        super();
    }

    public UnrealizedException(String message) {
        super(message);
    }

    public UnrealizedException(String message, Throwable cause) {
        super(message, cause);
    }

    public UnrealizedException(Throwable cause) {
        super(cause);
    }

    protected UnrealizedException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
