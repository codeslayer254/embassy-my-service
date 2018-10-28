package com.busyunit.embassy.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jmx.JmxAutoConfiguration;

@SpringBootApplication(exclude = JmxAutoConfiguration.class)
public class EmbassyServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(EmbassyServiceApplication.class, args);
    }
}
