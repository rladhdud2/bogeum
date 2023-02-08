<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/findId.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<body>
	<div id="findIdbox">

		<div id="loginpart1">
			<div id="loginimgbox">
				<a href="/"><img src="/img/logo.png"></a>
			</div>
		</div>


		<div id="findIdpart">
			<form action="/auth/pwd/search" method="get">

				<div id="findtitle">비밀번호 재발급</div>
				<div class="logininput">
					<div class="inputbox">
						<input id="username" name="username"
							placeholder="아이디 입력해주세요.">
					</div>
					<div class="inputbox">
						<input type="text" id="email" name="email"
							placeholder="이메일을 입력해주세요.">
					</div>
				</div>

				<div id="findinfo">
					<div>
						<a href="/auth/joinForm">회원가입</a>
					</div>
					<div>
						<a href="/auth/loginForm">로그인</a>&nbsp;/&nbsp;<a
							href="/auth/findId">아이디찾기</a>
					</div>
				</div>

				<div id="searchbutton1"></div>
			</form>

			<button type="button" id="btn-find">재발급 받기</button>
		</div>

	</div>

	<script src="/js/findpwd.js"></script>
</body>
</html>