<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/css/mypage.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/infoupdate.css">
    
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
            <div id="joinbox">
                <div class="title">회원정보수정</div>
                <div class="id">아이디<br>
                    <input type="text"  id="id" disabled value="${principal.user.username}">                   
                    
                </div>         
                <div class="password">비밀번호<br>
                    <input type="password" id="pwd" placeholder="비밀번호는 8~25자리로 입력하세요">
                    <div id="pwderror" class="error"></div>
                </div>
                <div class="passwordcheck" >비밀번호확인<br>
                    <input type="password" id="repwd">
                    <div id="repwderror" class="error"></div>
                </div>
                <div class="name">이름<br>
                    <input type="text" id="name" value="노민종" disabled>
                    <div id="nameerror" class="error" ></div>
                </div>
                <div class="birth">생년월일<br>
                    <input type="text" placeholder="생년월일 8자리를입력해주세요" id="birth" disabled value="${principal.user.birth}">
                    <div id="birtherror" class="error"></div>
                </div>               
        
                <div class="tel">전화번호<br>
                    <input placeholder="숫자만입력해주세요" id="tel" value="${principal.user.tel}">
                    <div id="telerror" class="error"></div>
                </div>                
                <div class="address">주소<br>
                    <input id="address" value="${principal.user.address}">
                    <div id="addresserror" class="error" ></div>
                </div>       
               
        
                <div class="signUp">
                    <button id="updatebutton" >수정하기</button>
                </div>      
            </div> 

            
        </div>

    </div>  


<%@ include file="../layout/footer.jsp" %>
<script src="/js/infoupdate.js"></script>

</body>
</html>