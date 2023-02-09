<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/ShoppingmallCart.css">
<%@ include file="../layout/header.jsp" %>
	<div id="Shop_Basket_wrap">
        <div class="basket_list_box">
            <ul class="basket_list_ul">
            <c:forEach var="cartItem" items="${cartItems}">
                <li class="basket_list_li">                  
                    <a href="#" class="basketAbox">
                        <div class="basket_list_info">
                            <div class="basket_picture">
                                <div class="Basket_item_img"><img src="/auth/images?filename=${cartItem.item.filename}"></div>
                            </div>
                            <div class="basket_item_name">
                                <div class="Basket_item_subnames">
                                    <p>${cartItem.item.name}</p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="basket_list_info2">
                        <div class="basket_amount">
                            <div class="goods_count_btn">
                                <input type="button" value="-">
                                <input type="text" value="${cartItem.count}" readonly>
                                <input type="button" value="+">
                            </div>  
                        </div>
                        <div class="basket_price">
                            <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${(cartItem.count)*(cartItem.item.price)}" />원</p>
                        </div>

                        <div class="basket_delete">
                            <a href="/user/cart/${principal.user.id}/${cartItem.id}/delete"><i class="fa-regular fa-trash-can"></i></a>
                        </div>
                    </div>           
                </li> 
                </c:forEach>
            </ul>
        </div>
        <div class="basket_pay_box">
            <div class="payment_price_box">
                <p>총 결제금액 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPrice}" />원</p>
            </div>
            <div class="pay_now">
                <a href="/order/cart/${principal.user.id}"><button>결제하기</button></a>
            </div>
        </div>
    </div>
<%@ include file="../layout/footer.jsp" %>