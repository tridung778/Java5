package com.mt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class Lab7Application {

	public static void main(String[] args) {
		SpringApplication.run(Lab7Application.class, args);
	}

}
