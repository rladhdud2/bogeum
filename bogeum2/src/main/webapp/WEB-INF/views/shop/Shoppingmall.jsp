<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/css/ShoppingmallMain.css">
<%@ include file="../layout/header.jsp" %>
	<div id="Shop_main_wrap">
        <div class="Shop_main_right">
            <ul>
                <li class="nav_list"><a href="#"><span class="all_items">전체상품</span></a></li>
                <li class="nav_list"><a href="#"><span class="sub_items">굿즈</span></a></li>
                <li class="nav_list"><a href="#"><span class="sub_items">반려용품</span></a></li>
                <li class="nav_list"><a href="#"><span class="sub_items">매거진</span></a></li>
            </ul>
        </div>
        <div class="Shop_main_left">
            <div class="item_info_box">
                <div class="item_num">
                    <p>총 <strong>0</strong>개의 상품이 있습니다.</p>
                </div>
                <div class="itema_array_method">
                    <select id="array_selectbox">
                        <option value="추천순">추천순</option>
                        <option value="판매인기순">판매인기순</option>
                        <option value="낮은가격순">낮은가격순</option>
                        <option value="높은가격순">높은가격순</option>
                    </select>
                </div>
            </div>

            <div class="goods_list">
                <ul class="list_ul">
                    <li class="list_li">
                        <a href="#" class="goods_box">
                            <div class="goods_picture">
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>상품명</p>
                                </div>
                                <div class="goods_price">
                                    <p>12,000원</p>
                                </div>
                            </div>
                        </a>
                    </li>

                    <li class="list_li">
                        <a href="#" class="goods_box">
                            <div class="goods_picture">
                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>상품명</p>
                                </div>
                                <div class="goods_price">
                                    <p>12,000원</p>
                                </div>
                            </div>
                        </a>
                    </li>

                    <li class="list_li">
                        <a href="#" class="goods_box">
                            <div class="goods_picture">

                            </div>
                            <div class="goods_info">
                                <div class="goods_name">
                                    <p>상품명</p>
                                </div>
                                <div class="goods_price">
                                    <p>12,000원</p>
                                </div>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>

        </div>
    </div>
<%@ include file="../layout/footer.jsp" %>