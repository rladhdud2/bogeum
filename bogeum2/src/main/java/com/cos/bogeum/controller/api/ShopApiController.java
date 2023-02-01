package com.cos.bogeum.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.bogeum.dto.ResponseDto;
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
}
