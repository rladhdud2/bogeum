package com.cos.bogeum.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.bogeum.dto.ResponseDto;
import com.cos.bogeum.dto.SendTmpPwdDto;
import com.cos.bogeum.repository.UserRepository;
import com.cos.bogeum.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
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
	@GetMapping("/auth/findId")
	public String fidId() {
		return "user/findId";
	}
	
	@GetMapping("/auth/findpwd")
	public String fidpwd() {
		return "user/findpwd";
	}

	//아이디찾기
	@GetMapping("/auth/id/search")    
	public String 아이디찾기(@RequestParam(value="username2")String username2,	
							@RequestParam(value="tel")String tel,
								Model model) {		
		model.addAttribute("board", userService.아이디찾기(username2,tel));

		return "user/findId";
	}	
	
	
	
}
