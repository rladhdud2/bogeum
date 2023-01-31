package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	
	/*쇼핑몰 메인페이지*/
	@GetMapping("/auth/shop")
	public String Shoppingmall() {
		return "shop/Shoppingmall";
	}
}
