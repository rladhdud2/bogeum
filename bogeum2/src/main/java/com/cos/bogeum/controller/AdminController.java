package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("/admin") 
	public String adminPage() {
		return "admin/adminPage";
	}
	
	/*상품등록 폼 이동*/
	@GetMapping("/save_item")
	public String saveItem() {
		return "admin/ProductSave";
	}
}
