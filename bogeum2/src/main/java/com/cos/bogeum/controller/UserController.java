package com.cos.bogeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/join";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/login";
	}
	
	@GetMapping("/user/updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	@GetMapping("/user/mypage")
	public String mypage() {
		return "user/mypage";
	}
	@GetMapping("/user/infoupdate")
	public String infoupdate() {
		return "user/infoupdate";
	}
	@GetMapping("/user/out")
	public String out() {
		return "user/out";
	}
}
