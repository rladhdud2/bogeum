<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</sec:authorize>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Inquiry</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/inquiry_board.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<%@ include file="../layout/header.jsp"%>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div id="board_customer">
		<div id="inner_contents">
			<h2>고객센터</h2>

			<div>
				<form action="/auth/inquiry/search" method="GET">
					<div class="input-group mb-3 input-group-sm" id="search_box">
						<input type="text" class="form-control" name="keyword"
							placeholder="제목으로 검색">
						<div class="input-group-prepend">
							<button type="submit" style="border: none">
								<span class="input-group-text" style="height: 31px"> <img
									alt="검색" src="/image/search.svg">
								</span>
							</button>
						</div>
					</div>
				</form>
			</div>

			<div>
				<table class="table" id="table">
					<colgroup>
						<col id="col_first">
						<col id="col_second">
						<col id="col_third">
						<col id="col_fourth">
						<col id="col_last">
					</colgroup>
					<thead class="thead-dark" id="thead">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<c:forEach var="list" items="${inquiryList.content}">
						<tbody>
							<tr>
								<td>${list.id}</td>
								<td class="inquiry_title"><a href="/inquiry/${list.id}">${list.title}</a></td>
								<td>${list.users.username}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${list.createDate}" /></td>
								<td>${list.count}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>

			<div>
				<button type="submit" class="btn btn-outline-secondary"
					id="submit_board"
					onclick="location.href = '/inquiry_board_saveForm'">문의하기</button>
			</div>
			<br>
			<div>

				<!-- Prev, Next 버튼 -->
				<ul class="pagination justify-content-center">
					<c:choose>
						<c:when test="${inquiryList.first}">
							<li class="page-item disabled"><a class="page-link"
								href="?keyword=${keyword}&page=${inquiryList.number-1}">Previous</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="?keyword=${keyword}&page=${inquiryList.number-1}">Previous</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${inquiryList.last}">
							<li class="page-item disabled"><a class="page-link"
								href="?keyword=${keyword}&page=${inquiryList.number+1}">Next</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="?keyword=${keyword}&page=${inquiryList.number+1}">Next</a></li>
						</c:otherwise>
					</c:choose>
				</ul>



			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../layout/footer.jsp"%>