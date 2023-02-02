package com.cos.bogeum.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cos.bogeum.dto.ResponseDto;
import com.cos.bogeum.model.Users;
import com.cos.bogeum.service.UserService;

@RestController
public class UserApiController {

	@Autowired
	private UserService userService;
	@Autowired
	private AuthenticationManager authenticationManager;

	//회원가입
	@PostMapping("/auth/joinproc") // 회원가입 로직이 실행되는 부분
	public ResponseDto<Integer> save(@RequestBody Users user) {
		System.out.println("UserApiController 호출됨");

//		user.setRoles(RoleType.USER);
		// 실제로 DB에 insert를 하고 아래에서 (1자리에) return이 된다.
		userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		// result가 1이면 성공, -1이면 실패
		// 자바 오브젝트를 리턴 받아옴.
	}
	
	//회원정보수정
	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody Users user) {

		userService.회원수정(user);		
		
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword()));

		SecurityContext securityContext = SecurityContextHolder.getContext();
		securityContext.setAuthentication(authentication);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}

	// 회원 탈퇴
	@DeleteMapping("/api/user/out/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id) {
		userService.회원탈퇴(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	//아이디 중복 체크
    @PostMapping("/auth/user/check")
    public ResponseDto<Integer> findByUsername(@RequestBody String username ) {
    	int i = 0;
    	if(userService.중복체크(username)!=null) {
    		i=userService.중복체크(username).getId();
    	}
		return new ResponseDto<Integer>(HttpStatus.OK.value(),i);
    }    
    
    
    
    

}
