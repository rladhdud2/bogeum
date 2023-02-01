package com.cos.bogeum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="items")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "ITEMS_SEQ_GENERATOR"
		, sequenceName = "ITEM_SEQ"
	    , initialValue = 1
	    , allocationSize = 1
		)
public class items {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="ITEMS_SEQ_GENERATOR")
	private int id;	//기본키
	
	@Column(nullable=false, length=100)
	private String category; //카테고리
	
	@Column(nullable=false, length=100)
	private String name; //상품명
	
	@Column(nullable=false, length=100)
	private int price; //상품금액
	
	@Column(nullable=false, length=100)
	private int count; //수량
	
	@Lob
	private String content;	//상품설명
	
	private String filename; //이미지
	private String fileOriName;
	private String fileurl;
	
	//장바구니 테이블 참조
	
}
