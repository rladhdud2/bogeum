let index = {
	init: function() {
		$("#updatebutton").on("click", () => {			
			this.updateCheck();			
		});
		$("#updatebutton2").on("click", () => {			
			this.update2();			
		});
		
	},

	update: function() {
		let data = {
			username: document.getElementById('id').value,
			password: document.getElementById('pwd').value,
			username2: document.getElementById('name').value,
			birth: document.getElementById('birth').value,
			tel: document.getElementById('tel').value,
			address: document.getElementById('address').value,
			email : document.getElementById('email').value,
		};				
		
		$.ajax({
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("회원수정이 완료되었습니다.");
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
		
	},
	
	update2: function() {
		let data = {
			username: document.getElementById('id').value,						
			username2: document.getElementById('name').value,
			birth: document.getElementById('birth').value,
			tel: document.getElementById('tel').value,
			address: document.getElementById('address').value,
			email : document.getElementById('email').value,
		};			
				
		$.ajax({
			type: "PUT",
			url: "/user2",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("회원수정이 완료되었습니다.");
			location.href = "/";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
		
	},


	updateCheck: function() {			
		var pwd = document.getElementById('pwd');
		var repwd = document.getElementById('repwd');
				
		var pwdCheck = /^(?=.*[0-9]).{8,25}$/;		
		

			if (!pwdCheck.test(pwd.value)) {
				alert("비밀번호는 8~25자리를 사용합니다");
				pwd.focus();
				return false;		
			};


			if (repwd.value !== pwd.value) {
				alert("비밀번호가 일치하지 않습니다");
				repwd.focus();
				return false;
			};
		
		
		this.update();
				
	}
	
	

}
index.init();