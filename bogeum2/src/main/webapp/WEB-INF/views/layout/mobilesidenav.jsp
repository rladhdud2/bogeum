<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/mobilesidenav.css">
<link rel="stylesheet" href="/css/reset.css">
<body>

<div id="mobilesidenavbox">
	<ul id="mobilesidenavli">
		<li>마이페이지</li>		
		<li onclick="open1()">주문내역 	
			<ul class="submenu" id="submenu1">
				<li>주문/배송조회</li>
				<li>교환/반품신청</li>
				<li>관심상품</li>
			</ul>	
			
		</li>
		
		<li onclick="open2()">나의정보
			<ul class="submenu" id="submenu2">
				<li>회원정보수정</li>
				<li>회원탈퇴</li>				
			</ul>		
		</li>
	</ul>
</div>

<script>

function open1() {	
	 document.getElementById('submenu1').style.display = "block";
}
function open2() {
	 document.getElementById('submenu2').style.display = "block";
}
function close1() {
	 document.getElementById('submenu2').style.display = "block";
}

</script>


</body>
</html>