package com.cos.bogeum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.bogeum.model.items;


public interface ShopRepository extends JpaRepository<items, Integer>{
	
}
