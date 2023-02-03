/**
 *회원삭제
 */
function deleteById(id) {

    $.ajax({
        type: "DELETE",
        url: "/api/user/out/" + id,
        dataType: "json"
    }).done(function(resp) {
        alert("회원삭제완료");
        location.href = "/admin";
    }).fail(function(error) {
        alert(JSON.stringify(error));
    });
}

/**
 * 검색타입선택
 */
function selectSearchType() {
    var select = document.getElementById("select");
    var searchTypeInput = document.getElementById("searchType");
    searchTypeInput.value = select.value;
}