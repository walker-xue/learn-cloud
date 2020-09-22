package com.donkeycode.core.utils;

import java.util.UUID;


public class UUIDUtils {

    public static String getRandomUUID() {
        return UUID.randomUUID().toString().replace("-", "").toLowerCase();
    }
}
