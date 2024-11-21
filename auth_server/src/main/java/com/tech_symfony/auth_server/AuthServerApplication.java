package com.tech_symfony.auth_server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class AuthServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(AuthServerApplication.class, args);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		//default password

		String encodedPassword = encoder.encode("password");

		System.out.println(encodedPassword + " " + encoder.matches("password", encodedPassword));
	}

}
