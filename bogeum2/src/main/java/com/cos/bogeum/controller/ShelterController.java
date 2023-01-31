package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShelterController {
	
	@GetMapping("/shelter") 
	public String adminPage() {
		return "shelter/shelter";
	}

}
