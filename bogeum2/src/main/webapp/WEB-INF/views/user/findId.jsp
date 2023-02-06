<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/findId.css">

<body>
	<div id="findIdbox">

		<div id="loginpart1">
			<div id="loginimgbox">
				<a href="/"><img src="/img/logo.png"></a>
			</div>
		</div>


		<div id="findIdpart">
			<form action="/auth/id/search" method="get">

				<div id="findtitle">아이디 찾기</div>
				<div class="logininput">
					<input id="username2" name="username2" placeholder="&nbsp;이름을 입력해주세요." >
					<input type="text" id="tel" name="email" placeholder="&nbsp;이메일을 입력해주세요.">
				</div>				
				
				<div id="findinfo">
					<div>
						<a href="/auth/joinForm">회원가입</a>
					</div>
					<div>
						<a href="/auth/loginForm">로그인&nbsp;</a>/<a href="/auth/findpwd">&nbsp;비밀번호찾기</a>
					</div>
				</div>				
				
				<div id="searchbutton1">				
				<button type="submit">검색</button>
				</div>
			</form>
			<div class="searchresult">${findId.username}</div>
		</div>



	</div>


</body>
</html>