package com.donkeycode.core;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class PermitAllUrl {

    private static final String[] ENDPOINTS = { "/v2/api-docs/**" };

    public static String[] permitALlUrl(String... urls) {
        if (null == urls || urls.length == 0) {
            return ENDPOINTS;
        }

        Set<String> set = new HashSet<>();
        Collections.addAll(set, ENDPOINTS);
        Collections.addAll(set, urls);
        return set.toArray(new String[set.size()]);
    }
}
