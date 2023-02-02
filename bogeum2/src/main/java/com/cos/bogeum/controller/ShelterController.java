package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShelterController {
	
	@GetMapping("/auth/shelter")
	public String shelter() {
		return "shelter/shelterPage";
	}
	@GetMapping("/auth/shelterDetail")
	public String shelterDetail() {
		return "shelter/shelterDetail";
	}


	/**
	 * API테스트
	 */
	@GetMapping("/shelterapitest")
	public String shelterApiTest() {
		return "shelter/shelterApiTest";
	}
	@GetMapping("/sidoapitest")
	public String sidoApiTest() {
		return "shelter/sidoApiTest";
	}
	@GetMapping("/sigunguapitest")
	public String sigunguApiTest() {
		return "shelter/sigunguApiTest";
	}


}
