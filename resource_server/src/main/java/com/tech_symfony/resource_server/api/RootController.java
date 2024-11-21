package com.tech_symfony.resource_server.api;


import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class RootController {

	@Operation(
		summary = "Đường dẫn gốc",
		description = "Từ đường dẫn này sẽ đi đến những đường dẫn khác dựa theo hành vi người dùng"
	)
	@GetMapping
	public String index() {


		return "Welcome to the resource server!";
	}

}
