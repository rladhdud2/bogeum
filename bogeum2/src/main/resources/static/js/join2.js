let index={
	init: function(){
		document.getElementById('signUpButton').addEventListener("click",()=>{	//회원가입 버튼을 클릭했을때
			this.save();	//save를 호출한다
		});
/*		
		$("#btn-login").on("click",()=>{
			this.login();
		});

		$("#btn-update").on("click",()=>{
			this.update();
		});
		*/
	},
	
	save: function() {
		//alert('user의 save 함수 호출됨');
		let data={
			username: document.getElementById('id').value,
			password:document.getElementById('pwd').value			
		};
		console.log(data);
		
		$.ajax({
			//회원가입 수행 요청
			type:"POST",
			url:"/auth/joinproc",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp){
			alert("회원가입이 완료되었습니다.");
			location.href="/auth/loginForm";
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
			//응답이 비정상
		});
		
		//ajax 통신을 이요해서 3개의 데이터를 json으로 변경하여 insert 요청!
	},
/*
	login: function() {
		let data={
		username: $("#username").val(),
		password: $("#password").val()
		};
		$.ajax({
			//회원가입 수행 요청
			type:"POST",
			url:"/",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(status, data){
			if(status.data==1) {
				alert("로그인이 완료되었습니다.");
				location.href="/";
			}else{
				alert("로그인 실패");
			}	
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
			//응답이 비정상
		});
	}
*/
	update: function(){
		let data={
			id: $("#id").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};
		$.ajax({
			type:"PUT",
			url:"/user",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("회원수정이 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
}
index.init();