package com.donkeycode;

import lombok.extern.slf4j.Slf4j;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.openfeign.EnableFeignClients;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.env.Environment;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * 网关服务
 * 接口调用统一入口、数字验签、身份认证、接口鉴权、接口限流、黑白名单限制
 * 开发环境下提供在线调试文档.
 *
 * @author walker
 * @create 2018/3/12.
 */

@Slf4j
@ComponentScan({ "com.donkeycode" })
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@EnableFeignClients({ "com.donkeycode.feign" })
public class StartUpCloudAPIGatewayApplication implements CommandLineRunner {

    public static void main(String[] args) throws UnknownHostException {
        ConfigurableApplicationContext app = SpringApplication.run(StartUpCloudAPIGatewayApplication.class, args);

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

    @Override
    public void run(String... args) throws Exception {

    }
}
