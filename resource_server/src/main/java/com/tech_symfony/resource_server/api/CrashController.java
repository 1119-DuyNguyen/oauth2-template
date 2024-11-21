
package com.tech_symfony.resource_server.api;

import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller used to showcase what happens when an exception is thrown
 */
@RestController
class CrashController {

	@Operation(
		summary = "Kiểm thử khả năng xử lý lỗi của ứng dụng"
	)

	@GetMapping("/oups")
	public ResponseEntity<String> triggerException() {
		throw new RuntimeException(
			"Expected: controller used to showcase what " + "happens when an exception is thrown");
	}

}
