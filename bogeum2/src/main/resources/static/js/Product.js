function Delete_item(){
	var id=$("#id").val();
	console.log("삭제");
	$.ajax({
		type:"DELETE",
		url:"/deleteItem/"+id,
		dataType:"json"
	}).done(function(resp){
		alert("상품 삭제가 완료되었습니다");
		location.href="/admin";
	}).fail(function(error){
		alert(JSON.stringify(error));
	});
}