<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<body>
	<div id="findIdbox">
		<div class="w3-content w3-container w3-margin-top">
			<div class="w3-container w3-card-4">

				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>

				<form action="/auth/id/search" method="get">
					<div>
						<p>
							<label>name</label> <input type="text" id="username2" name="username2"
								placeholder="이름을 입력해주세요.">
						</p>						
						<p>
							<label>name</label> <input type="text" id="tel" name="tel"
								placeholder="전화번호를 입력해주세요." >
						</p>
					</div>
					<button type="submit">검색</button>
				</form>
${board.username}
			</div>
		</div>

	</div>

</body>
</html>