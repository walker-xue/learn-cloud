package com.donkeycode.lbframe.core;

import java.util.UUID;

public class UUIDTest {

    public static void main(String[] args) {
        System.out.println(getOrderIdByUUId());
    }

    public static String getOrderIdByUUId() {
        int machineId = 1;// 最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if (hashCodeV < 0) {
            hashCodeV = -hashCodeV;
        }
        return machineId + String.format("%015d", hashCodeV);
    }

}
