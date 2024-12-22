package com.javaweb;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.javaweb")
public class SpringBootWebApplication {
	public static void main(String[] args) throws Exception{
        SpringApplication.run(SpringBootWebApplication.class, args);
	}	
}

