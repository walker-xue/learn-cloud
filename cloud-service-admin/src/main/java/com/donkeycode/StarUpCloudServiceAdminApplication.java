package com.donkeycode;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import lombok.extern.slf4j.Slf4j;

/**
 * @author yanjun.xue
 */
@Slf4j
@Configuration
@EnableAdminServer
@EnableAutoConfiguration
@EnableDiscoveryClient
@ComponentScan({ "com.donkeycode" })
public class StarUpCloudServiceAdminApplication {

    public static void main(String[] args) throws UnknownHostException {
        SpringApplication app = new SpringApplication(StarUpCloudServiceAdminApplication.class);
        Environment env = app.run(args).getEnvironment();
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
