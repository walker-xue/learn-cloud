package com.donkeycode;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.env.Environment;
import org.springframework.scheduling.annotation.EnableScheduling;


import lombok.extern.slf4j.Slf4j;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-05-25 12:44
 */
@Slf4j
@EnableDiscoveryClient
@EnableCircuitBreaker
@SpringBootApplication
@ComponentScan({"com.donkeycode"})
@EnableFeignClients({"com.donkeycode.feign"})
@EnableScheduling
public class StartUpLearnBaseLibApplication {

    public static void main(String[] args) throws UnknownHostException {
        ConfigurableApplicationContext app = new SpringApplicationBuilder(StartUpLearnBaseLibApplication.class).run(args);

        Environment env = app.getEnvironment();
        String protocol = "http";
        if (env.getProperty("server.ssl.key-store") != null) {
            protocol = "https";
        }

        log.info("\n----------------------------------------------------------\n\t"
                + "Application '{}' is running! Access URLs:\n\t"
                + "Local: \t\t{}://localhost:{}\n\t"
                + "External: \t{}://{}:{}\n\t"
                + "Version: \t{}\n\t"
                + "Profile(s): \t{}\n----------------------------------------------------------",
            env.getProperty("spring.application.name"),
            protocol, env.getProperty("server.port"),
            protocol, InetAddress.getLocalHost().getHostAddress(),
            env.getProperty("server.port"),
            env.getProperty("spring.application.version"),
            env.getActiveProfiles());
    }
}
