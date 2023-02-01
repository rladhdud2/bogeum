let index = {
	init: function() {
		$("#btn-out").on("click", () => {

			var chk1 = document.querySelector("#checkList").checked;

			if (!chk1) {
				alert("약관에 동의해 주세요");
				return false;

			} else {

				let check = confirm("정말로 탈퇴하시겠습니까");

				if (check) {
					alert("탈퇴가 완료되었습니다.");
					this.out();
				} else {
					alert("최소되었습니다.");
				}

			}

		});
	},


	out: function() {		
		var id = $("#id").val();

		$.ajax({
			type: "DELETE",
			url: "/api/user/out/" + id,
			dataType: "json"
		}).done(function(resp) {
			location.href = "/logout";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
}
index.init();
