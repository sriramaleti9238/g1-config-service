package com.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class G1ConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(G1ConfigServerApplication.class, args);
	}

}
