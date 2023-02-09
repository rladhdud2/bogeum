<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/ShoppingmallMain.css">
<%@ include file="../layout/header.jsp" %>
	<div id="Shop_main_wrap">
        <div class="Shop_main_right">
            <ul>
                <li class="nav_list"><a onclick="hide1();" return false;><span class="all_items">전체상품</span></a></li>
                <li class="nav_list"><a onclick="hide2();" return false;><span class="sub_items">굿즈</span></a></li>
                <li class="nav_list"><a onclick="hide3();" return false;><span class="sub_items">반려용품</span></a></li>
                <li class="nav_list"><a onclick="hide4();" return false;><span class="sub_items">매거진</span></a></li>
            </ul>
        </div>
        <div class="Shop_main_left">
            <div class="item_info_box">
                <div class="item_num">
                
                    <p>총 <strong><c:out value="${item.itemCount}"></c:out></strong>개의 상품이 있습니다.</p>
                </div>
                <div class="itema_array_method">
                	<a href="#"><span>최신순 ㅣ</span></a>
                    <a href="#"><span>낮은 가격순 ㅣ</span></a>
                    <a href="#"><span>높은 가격순</span></a>
                </div>
            </div>

            <div class="goods_list list1" >
                <ul class="list_ul">
                	<c:forEach var="item" items="${shop.content}">
                    <li class="list_li">
                        <a href="/auth/shop/${item.id}" class="goods_box">
                            <div class="goods_picture">
                            	<img src="/auth/images?filename=${item.filename}">	
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>${item.name}</p>
                                </div>
                                <div class="goods_price">
                                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />원</p>
                                </div>
                            </div>
                        </a>
                    </li>
					</c:forEach>
                </ul>
            </div>
			
			<div class="goods_list list2" style="display:none;">
                <ul class="list_ul">
                	<c:forEach var="item" items="${shop.content}">
                	<c:if test="${item.category eq '굿즈'}">
                    <li class="list_li">
                        <a href="/auth/shop/${item.id}" class="goods_box">
                            <div class="goods_picture">
                            	<img src="/auth/images?filename=${item.filename}">	
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>${item.name}</p>
                                </div>
                                <div class="goods_price">
                                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />원</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    </c:if>
					</c:forEach>
                </ul>
            </div>
            
            <div class="goods_list list3" style="display:none;">
                <ul class="list_ul">
                	<c:forEach var="item" items="${shop.content}">
                	<c:if test="${item.category eq '반려용품'}">
                    <li class="list_li">
                        <a href="/auth/shop/${item.id}" class="goods_box">
                            <div class="goods_picture">
                            	<img src="/auth/images?filename=${item.filename}">	
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>${item.name}</p>
                                </div>
                                <div class="goods_price">
                                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />원</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    </c:if>
					</c:forEach>
                </ul>
            </div>
            
            <div class="goods_list list4" style="display:none;">
                <ul class="list_ul">
                	<c:forEach var="item" items="${shop.content}">
   					<c:if test="${item.category eq '매거진'}">
                    <li class="list_li">
                        <a href="/auth/shop/${item.id}" class="goods_box">
                            <div class="goods_picture">
                            	<img src="/auth/images?filename=${item.filename}">	
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>${item.name}</p>
                                </div>
                                <div class="goods_price">
                                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.price}" />원</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    </c:if>
					</c:forEach>
                </ul>
            </div>
            
            
        </div>
    </div>
<script type="text/javascript" src="/js/Shoppingmall.js"></script>
<%@ include file="../layout/footer.jsp" %>