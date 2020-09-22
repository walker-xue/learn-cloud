package com.donkeycode.lbframe.core;

import lombok.extern.slf4j.Slf4j;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.junit4.SpringRunner;

import com.donkeycode.StarUpCloudScheduleApplication;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest(classes = StarUpCloudScheduleApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class BaseTest {

    /**
     * @LocalServerPort 提供了 @Value("${local.server.port}") 的代替
     */
    @LocalServerPort
    private int port;

    protected void init() {
        log.info(this.getClass().getName());
        log.info(this.port + "");
    }

}