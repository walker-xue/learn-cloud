package com.donkeycode.core.exception;

/**
 * 用户未找到异常
 *
 * @author nanfeng
 * @date 2019年12月10日
 * @since 0.0.1
 */
public class UserNotFoundException extends NotFoundException {

    private static final long serialVersionUID = 1L;

    public UserNotFoundException() {
        super();
    }

    public UserNotFoundException(String message) {
        super(message);
    }

    public UserNotFoundException(Throwable cause) {
        super(cause);
    }

    public UserNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
