package com.donkeycode.core;

/**
 * 基础常量定义，推荐应用直接基础此类进行重新
 *
 * @author donkey
 */
public class Constants {

    public enum OrderMode {

        DESC("desc"),
        ASC("asc");

        String mode;

        OrderMode(String mode) {
            this.mode = mode;
        }

        public static OrderMode valueCode(String mode) {
            switch (mode.toLowerCase()) {
                case "asc":
                    return ASC;
                default:
                    return DESC;
            }

        }

        public String getMode() {
            return this.mode;
        }
    }

    // 默认显示行
    public static final int DEFAULT_PAGE_SIZE = 10;

    // 默认显示页
    public static final int DEFAULT_PAGE_INDEX = 0;

    public static final String ORDER_BY_KEY = "orderfield";

    public static final String ORDER_METHOD_KEY = "ordermethod";
}