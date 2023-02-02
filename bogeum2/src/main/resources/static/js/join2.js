let index = {
	init: function() {
		document.getElementById('signUpButton').addEventListener("click", () => {	//회원가입 버튼을 클릭했을때
			this.signUpCheck();

		});
		
	},

	save: function() {
		//alert('user의 save 함수 호출됨');
		let data = {
			username: document.getElementById('id').value,
			password: document.getElementById('pwd').value,
			username2: document.getElementById('name').value,
			birth : document.getElementById('birth').value,
			tel : document.getElementById('tel').value,
			address : document.getElementById('address').value,
			email : document.getElementById('email').value,
		};		

		$.ajax({
			//회원가입 수행 요청
			type: "POST",
			url: "/auth/joinproc",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp) {
			alert("회원가입이 완료되었습니다.");
			location.href = "/auth/loginForm";
			//응답이 정상
		}).fail(function(error) {
			alert(JSON.stringify(error));
			//응답이 비정상
		});

		//ajax 통신을 이요해서 3개의 데이터를 json으로 변경하여 insert 요청!
	},

	signUpCheck: function() {
		var id = document.getElementById('id');
		var pwd = document.getElementById('pwd');
		var repwd = document.getElementById('repwd');
		var name = document.getElementById('name');
		var birth = document.getElementById('birth');		
		var address = document.getElementById('address');
		var tel = document.getElementById('tel');
		var email = document.getElementById('email');
		var number = document.getElementById('number');
		var agree1 = document.getElementById('agree1');
		var agree2 = document.getElementById('agree2');
		var idcheck = document.getElementById('idcheck');

		if (id.value == "") {
			document.getElementById('iderror').innerHTML = "아이디를 입력해주세요"
			id.focus();
			return false;
		} else {
			document.getElementById('iderror').innerHTML = ""
		};

		if (idcheck.value == "") {
			document.getElementById('iderror').innerHTML = "아이디 중복확인을 해주세요"
			id.focus();
			return false;
		} else {
			document.getElementById('iderror').innerHTML = ""
		};

		if (pwd.value == "") {
			document.getElementById('pwderror').innerHTML = "비밀번호를 입력해주세요"
			pwd.focus();
			return false;
		} else {
			document.getElementById('pwderror').innerHTML = ""
		};

		var pwdCheck = /^(?=.*[0-9]).{8,25}$/;

		if (!pwdCheck.test(pwd.value)) {
			document.getElementById('pwderror').innerHTML = "비밀번호는 8~25자리를 사용합니다"
			pwd.focus();
			return false;
		};


		if (repwd.value !== pwd.value) {
			document.getElementById('repwderror').innerHTML = "비밀번호가 일치하지 않습니다"
			repwd.focus();
			return false;
		} else {
			document.getElementById('repwderror').innerHTML = ""
		};

		if (name.value == "") {
			document.getElementById('nameerror').innerHTML = "이름을 입력해주세요"
			name.focus();
			return false;
		} else {
			document.getElementById('nameerror').innerHTML = ""
		};



		if (birth.value == "") {
			document.getElementById('birtherror').innerHTML = "생년월일을 입력해주세요"
			birth.focus();
			return false;
		} else {
			document.getElementById('birtherror').innerHTML = ""
		};

		var birthCheck = /^(?=.*[0-9]).{8}$/;

		if (!birthCheck.test(birth.value)) {
			document.getElementById('birtherror').innerHTML = "정확한 생년월일을 입력해주세요"
			birth.focus();
			return false;
		};
		
		if (address.value == "") {
			document.getElementById('addresserror').innerHTML = "주소를 입력해주세요"
			address.focus();
			return false;
		} else {
			document.getElementById('addresserror').innerHTML = ""
		};

		if (tel.value == "") {
			document.getElementById('telerror').innerHTML = "전화번호를 입력해주세요"
			tel.focus();
			return false;
		} else {
			document.getElementById('telerror').innerHTML = ""
		};

		var telCheck = /^(?=.*[0-9]).{10,11}$/;

		if (!telCheck.test(tel.value)) {
			document.getElementById('telerror').innerHTML = "정확한 번호를 입력해주세요"
			tel.focus();
			return false;
		} else {
			document.getElementById('telerror').innerHTML = ""
		};
		
		if (email.value == "") {
			document.getElementById('emailerror').innerHTML = "이메일을 입력해주세요"
			email.focus();
			return false;
		} else {
			document.getElementById('emailerror').innerHTML = ""
		};
		

		if (number.value == "") {
			document.getElementById('numbererror').innerHTML = "인증번호를 입력해주세요"
			number.focus();
			return false;
		} else {
			document.getElementById('numbererror').innerHTML = ""
		};
		
		if (!agree1.checked) {
			alert("약관동의를 체크하세요");
			agree1.focus();
			return false;
		};
		if (!agree2.checked) {
			alert("약관동의를 체크하세요");
			agree1.focus();
			return false;
		};
		
		this.save();

	},

	
	
}

index.init();


document.getElementById('id').addEventListener("keyup", () => {
	var id2 = document.getElementById('id');
	if (id2 !== "") {
		document.getElementById('iderror').innerHTML = ""
	}
})
document.getElementById('pwd').addEventListener("keyup", () => {
	var pwd2 = document.getElementById('pwd');
	if (pwd2 !== "") {
		document.getElementById('pwderror').innerHTML = ""
	}
})
document.getElementById('repwd').addEventListener("keyup", () => {
	var repwd2 = document.getElementById('repwd');
	if (repwd2 !== "") {
		document.getElementById('repwderror').innerHTML = ""
	}
})
document.getElementById('name').addEventListener("keyup", () => {
	var name2 = document.getElementById('name');
	if (name2 !== "") {
		document.getElementById('nameerror').innerHTML = ""
	}
})
document.getElementById('birth').addEventListener("keyup", () => {
	var birth2 = document.getElementById('birth');
	if (birth2 !== "") {
		document.getElementById('birtherror').innerHTML = ""
	}
})
document.getElementById('tel').addEventListener("keyup", () => {
	var tel2 = document.getElementById('tel');
	if (tel2 !== "") {
		document.getElementById('telerror').innerHTML = ""
	}
})
document.getElementById('number').addEventListener("keyup", () => {
	var number2 = document.getElementById('number');
	if (number2 !== "") {
		document.getElementById('numbererror').innerHTML = ""
	}
})
document.getElementById('address').addEventListener("keyup", () => {
	var address2 = document.getElementById('address');
	if (address2 !== "") {
		document.getElementById('addresserror').innerHTML = ""
	}
})

function selectAll(selectAll) {
	const checkboxes
		= document.getElementsByName('agree');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked;
	})
}
function idcheck() {
	var username = document.getElementById('id').value;
	document.getElementById('idcheck').value = username;	
	
	$.ajax({
			type:"POST",
			url:"/auth/user/check", //auth
			data:username,
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){

			if(resp.data !== 0) {
				alert("중복된 아이디 입니다.");
				document.getElementById('id').value = "";				
				location.href="redirect:/";
			} else {
				alert("이 아이디는 사용할 수 있습니다.");
				location.href="redirect:/";
			}
	
		});
	
	
	
	if (id !== "") {
		document.getElementById('iderror').innerHTML = ""
	}

}
