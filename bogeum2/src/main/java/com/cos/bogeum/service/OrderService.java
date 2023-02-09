package com.cos.bogeum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.bogeum.model.CartItem;
import com.cos.bogeum.model.Order;
import com.cos.bogeum.model.OrderItem;
import com.cos.bogeum.model.Users;
import com.cos.bogeum.repository.OrderItemRepository;
import com.cos.bogeum.repository.OrderRepository;

@Service
public class OrderService {
	@Autowired
	private UserService userService;
	@Autowired
	private OrderItemRepository orderItemRepository;
	@Autowired
	private OrderRepository orderRepository;
	
	// 회원가입 하면 회원 당 주문 하나 생성
    public void createOrder(Users user){

        Order order = Order.createOrder(user);

        orderRepository.save(order);
    }
    
    // id에 해당하는 주문아이템 찾기
    public List<OrderItem> findUserOrderItems(int userId) {
        return orderItemRepository.findOrderItemsByUserId(userId);
    }
    
    // OrderItem 하나 찾기
    public OrderItem findOrderitem(int orderItemId) {
    	return orderItemRepository.findOrderItemById(orderItemId);
    }
    
	//장바구니 상품주문
	@Transactional
	public OrderItem addCartOrder(int itemId, int userId, CartItem cartItem) {

        Users user = userService.findUser(userId);

        OrderItem orderItem = OrderItem.createOrderItem(itemId, user, cartItem);

        orderItemRepository.save(orderItem);

        return orderItem;
    }
	
	// 주문하면 Order 만들기
    @Transactional
    public void addOrder(Users user, List<OrderItem> orderItemList) {

        Order userOrder = Order.createOrder(user, orderItemList);

        orderRepository.save(userOrder);
    }

}