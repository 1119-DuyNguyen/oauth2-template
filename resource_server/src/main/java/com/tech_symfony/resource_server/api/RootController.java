package com.tech_symfony.resource_server.api;


import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class RootController {

	@GetMapping
	public String index() {


		return "Welcome to the resource server!";
	}

}
