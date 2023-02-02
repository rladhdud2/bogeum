package com.cos.bogeum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.bogeum.model.RoleType;
import com.cos.bogeum.model.Users;
import com.cos.bogeum.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder encodeer;

	@Transactional
	public void 회원가입(Users user) {
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRoles(RoleType.USER);
		userRepository.save(user); // 하나의 트랜젝션
	}

	@Transactional
	public void 회원수정(Users user) {
		System.out.println(user.getAddress());
		Users persistance = userRepository.findByUsername(user.getUsername()).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		persistance.setPassword(encPassword);
		persistance.setAddress(user.getAddress());
		persistance.setTel(user.getTel());

	}

	// 회원 탈퇴
	@Transactional
	public void 회원탈퇴(int id) {
		userRepository.deleteById(id);
	}

}
