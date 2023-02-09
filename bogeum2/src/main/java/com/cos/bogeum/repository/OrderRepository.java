package com.cos.bogeum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.bogeum.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

}
