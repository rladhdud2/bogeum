let index2={
	init: function() {		

		$("#btn-find").on("click", () => {			
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
	            alert("임시 비밀번호가 발송되었습니다.");
	            location.href = "/auth/loginForm";
	        }
	    }).fail(function(error) {
	        alert(JSON.stringify(error));
	    });
	    
	},

	
	


}


index2.init();