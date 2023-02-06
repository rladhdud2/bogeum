<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<body>
<%@ include file="../layout/header.jsp"%>



<div class="container">     
<%@ include file="../layout/sidenav.jsp"%>
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