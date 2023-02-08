let index2 = {
	init: function() {

		$("#btn-find").on("click", () => {
			var username = document.getElementById('username');
			var email = document.getElementById('email');

			if (username.value == "") {
				Swal.fire({
					html: "아이디를 입력해주세요",
					icon: "warning"
				});
				username.focus();
				return false;

			};
			if (email.value == "") {
				Swal.fire({
					html: "이메일을 입력해주세요",
					icon: "warning"
				});
				return false;
			};

			Swal.fire({
				html: "임시 비밀번호를 발송하였습니다",
				icon: "success"
			});;
			this.find();
		});

	},

	find: function() {

		let data = {
			username: $("#username").val(),
			email: $("#email").val()
		};

		$.ajax({
			type: "POST",
			url: "/auth/find",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8"
		}).done(function(resp) {
			if (resp.status == 400) {
				if (resp.data.hasOwnProperty('valid_email')) { //'hasOwnProperty'객체가 특정 프로퍼티를 가지고 있는지를 나타내는 boolean 값을 반환
					$('#valid_email').text(resp.data.valid_email);
					$('#email').focus();
				} else {
					$('#valid_email').text('');
				}

				if (resp.data.hasOwnProperty('valid_username')) {
					$('#valid_username').text(resp.data.valid_username);
					$('#username').focus();
				} else {
					$('#valid_username').text('');
				}


			} else {				
				location.href = "/auth/loginForm";
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},





}


index2.init();