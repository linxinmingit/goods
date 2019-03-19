package com.chains;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = "com.chains.mapper")
public class GlassesApplication {

    public static void main(String[] args) {
        SpringApplication.run(GlassesApplication.class, args);
    }

}
