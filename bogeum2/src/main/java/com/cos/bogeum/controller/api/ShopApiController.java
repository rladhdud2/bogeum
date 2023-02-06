package com.cos.bogeum.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.bogeum.dto.ResponseDto;
import com.cos.bogeum.model.Review;
import com.cos.bogeum.service.ShopService;

@RestController
public class ShopApiController {
	@Autowired
	private ShopService shopService;
	
	/*관리자페이지 상품 삭제*/
	@DeleteMapping("/deleteItem/{id}")
	public ResponseDto<Integer> delete(@PathVariable int id){
		shopService.상품삭제(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	/*쇼핑몰 상세페이지 리뷰 등록*/
	@PostMapping("/api/shop/{itemId}/save")
	public void ReviewSave(@PathVariable int itemID,
							@RequestBody Review review) {
		shopService.리뷰등록(itemID, review);
	}
	/*쇼핑몰 상세페이지 리뷰 수정*/
	/*쇼핑몰 상세페이지 리뷰 삭제*/
}
