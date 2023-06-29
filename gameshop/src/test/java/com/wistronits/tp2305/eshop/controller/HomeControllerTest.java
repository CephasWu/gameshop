package com.wistronits.tp2305.eshop.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.wistronits.tp2305.eshop.service.UserService;

@SpringBootTest
class HomeControllerTest extends HomeController {

	@Autowired
	private UserService userService;
	
	@Test
	void testLoginStringStringModel() {
//		System.out.println("是否db有資料:" + userService.login("q111111111p@yahoo.com.tw", "654321")); //true
		System.out.println("是否db有資料:" + userService.login("q111111111p@yahoo.com.tw", "6543210")); // false
	}

}
