<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <link rel="stylesheet" href="/css/mypage.css">
    <link rel="stylesheet" href="/css/reset.css">

<body>
<%@ include file="../layout/header.jsp"%>
<div class="container">
        <div class="mypagenav">
            <div class="mypagenavmenu">
                <div class="mypagenavtitle">마이페이지</div>
                <div>
                    <ul>
                        <li><a href="/user/mypage">마이페이지</a></li>
                    </ul>
                </div>
            </div>

            <div class="mypagenavmenu">
                <div class="mypagenavtitle">주문내역</div>
                <div>
                    <ul>
                        <li><a href="#">주문/배송 조회</a></li>
                        <li><a href="#">취소/교환/반품 신청</a></li>
                        <li><a href="#">관심상품</a></li>
                    </ul>
                </div>
            </div>

            <div class="mypagenavmenu">
                <div class="mypagenavtitle">나의 정보</div>
                <div>
                    <ul>
                        <li><a href="/user/infoupdate">회원 정보 수정</a></li>
                        <li><a href="/user/out">회원 탈퇴</a></li>
                    </ul>
                </div>

            </div>
        </div>


        <div class="mypagecontentbox">
            <div class="mypagecontent">
                <div class="mypagecontenttitle">주문/배송 조회</div>
                <div class="myorder1">


                    <div id="recentorder">                        
                        <div id="orderprocess">
                            <ul>
                                <li>
                                    <div class="ordercount"><a href="">0</a></div>
                                    <div>입금대기</div>
                                </li>        
                                <li>></li>                        
                                <li>
                                    <div class="ordercount"><a href="">0</a></div>
                                    <div>결제완료</div>
                                </li>   
                                <li>></li>                              
                                <li>
                                    <div class="ordercount"><a href="">0</a></div>
                                    <div>상품준비중</div>
                                </li>  
                                <li>></li>                               
                                <li>
                                    <div class="ordercount"><a href="">0</a></div>
                                    <div>배송중</div>
                                </li>       
                                <li>></li>                          
                                <li>
                                    <div class="ordercount"><a href="">0</a></div>
                                    <div>수령완료</div>
                                </li>
                            </ul>

                            <div class="refundmenu">
                                <div class="refundcontent">
                                    <div>주문취소&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                    <div>0</div>
                                </div>
                                <div class="refundcontent">
                                    <div>교환신청&nbsp;&nbsp;&nbsp;</div>
                                    <div>0</div>
                                </div>
                                <div class="refundcontent">
                                    <div>반품신청&nbsp;&nbsp;&nbsp;</div>
                                    <div>0</div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <div class="mypagecontent">
                <div class="mypagecontenttitle">주문내역</div>

                <div class="myorder2">
                    <div class="myorder2nav">
                        <div class="orderdate">주문일자</div>
                        <div class="myorderitem">주문상품</div>
                        <div class="orderprice">상품금액(수량)</div>
                        <div class="deliveryprice">배송비</div>
                        <div class="confirm">확인/취소</div>
                    </div>

                    <div class="myorder2content">
                        <div class="orderdate">2022.01.30</div>
                        <div class="myorderitem">  
                            <div class="itemimg"><img src="/img/catcoution.jpg"></div>          
                            <div class="itemname">고양이 쿠션</div>                           
                        </div>                        
                        <div class="orderprice">12,800원<br><br>(1개)</div>
                        <div class="deliveryprice">무료</div>
                        <div class="confirm"><button>확인/취소</button></div>
                    </div>
                    <div class="myorder2content">
                        <div class="orderdate">2022.01.30</div>
                        <div class="myorderitem">  
                            <div class="itemimg"><img src="/img/catfood.jpg"></div>          
                            <div class="itemname">고양이 사료</div>                           
                        </div>                        
                        <div class="orderprice">12,800원<br><br>(1개)</div>
                        <div class="deliveryprice">무료</div>
                        <div class="confirm"><button>확인/취소</button></div>
                    </div>
                    <div class="myorder2content">
                        <div class="orderdate">2022.01.30</div>
                        <div class="myorderitem">  
                            <div class="itemimg"><img src="/img/scratcher.jpg"></div>          
                            <div class="itemname">스크래쳐</div>                           
                        </div>                        
                        <div class="orderprice">12,800원<br><br>(1개)</div>
                        <div class="deliveryprice">무료</div>
                        <div class="confirm"><button>확인/취소</button></div>
                    </div>

                </div>

            </div>
        </div>

    </div>  
    <%@ include file="../layout/footer.jsp" %>
</body>
</html>