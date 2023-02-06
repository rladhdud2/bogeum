package com.cos.bogeum.controller;

import com.cos.bogeum.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.bogeum.service.ShopService;

@Controller
public class AdminController {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ShopService shopService;
	
	@GetMapping("/admin") 
	public String adminPage(Model model,@PageableDefault(size=10, sort = "id", 
			direction = Sort.Direction.ASC)Pageable pageable) {
		model.addAttribute("ItemList", shopService.상품목록(pageable));

		model.addAttribute("user", userRepository.findAll(pageable));
		return "admin/adminPage";
	}
	
	/*상품등록 폼 이동*/
	@GetMapping("/save_item")
	public String saveItem() {
		return "admin/ProductSave";
	}
	
	/*상품수정 폼 이동*/
	@GetMapping("/update_item/{id}")
	public String updateItem(@PathVariable int id, Model model) {
		model.addAttribute("item", shopService.상품아이디조회(id));
		return "admin/ProductUpdate";
	}
	
}
