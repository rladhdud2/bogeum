<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/infoupdate.css">

<body>
	<%@ include file="../layout/header.jsp"%>


	<div class="container">
		<%@ include file="../layout/sidenav.jsp"%>
		<div class="mypagecontentbox">
			<div id="joinbox">
				<div class="title">회원정보수정</div>
				<div class="id">
					아이디<br> <input type="text" id="id" disabled
						value="${principal.user.username}">					
				</div>

				<c:choose>
					<c:when test="${principal.user.oauth=='kakao'}">
						<div class="password">
							비밀번호<br> <input id="pwd" 
								placeholder="카카오로그인은 수정이 불가능 합니다"  disabled>
							<div id="pwderror" class="error"></div>
						</div>						
						<div class="passwordcheck">
							비밀번호확인<br> <input type="password" id="repwd" disabled>
							<div id="repwderror" class="error"></div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="password">
							비밀번호<br> <input type="password" id="pwd"
								placeholder="비밀번호는 8~25자리로 입력하세요">
							<div id="pwderror" class="error"></div>
						</div>
						<div class="passwordcheck">
							비밀번호확인<br> <input type="password" id="repwd">
							<div id="repwderror" class="error"></div>
						</div>
					</c:otherwise>
				</c:choose>



				<div class="name">
					이름<br> <input type="text" id="name"
						value="${principal.user.username2}">
					<div id="nameerror" class="error"></div>
				</div>
				<div class="birth">
					생년월일<br> <input type="text" placeholder="생년월일 8자리를입력해주세요"
						id="birth" value="${principal.user.birth}">
					<div id="birtherror" class="error"></div>
				</div>
				<div class="address">
					주소<br> <input id="address" value="${principal.user.address}">
					<div id="addresserror" class="error"></div>
				</div>

				<div class="tel">
					전화번호<br> <input placeholder="숫자만입력해주세요" id="tel"
						value="${principal.user.tel}">
					<div id="telerror" class="error"></div>
				</div>
				<div class="email">
					이메일<br> <input id="email" value="${principal.user.email}">
					<div id="addresserror" class="error"></div>
				</div>
				
				
				<c:choose> 
					<c:when test="${principal.user.oauth=='kakao'}">
						<div class="signUp">
							<button class="updatebutton" id="updatebutton2">수정하기</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="signUp">
							<button class="updatebutton" id="updatebutton">수정하기</button>
						</div>
					</c:otherwise>
				</c:choose>
				
			</div>


		</div>

	</div>


	<%@ include file="../layout/footer.jsp"%>
	<script src="/js/infoupdate.js"></script>

</body>
</html>