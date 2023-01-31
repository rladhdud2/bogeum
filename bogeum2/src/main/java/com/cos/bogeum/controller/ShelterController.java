package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShelterController {
	
	@GetMapping("/shelter") 
	public String shelter() {
		return "shelter/shelter";
	}
	@GetMapping("/shelterDetail") 
	public String shelterDetail() {
		return "shelter/shelterDetail";
	}
	

}
