<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/inquiry_board_detail.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../layout/header.jsp"%>

<body>
	<div id="board_detail_container">
		<h2>고객센터</h2>
		<div id="content_head">
			<div style="float: right;">
				<span id="id" style="margin-right: 20px; display: none;">${inquirys.id}</span>
				작성자 : <span style="margin-right: 20px;">${inquirys.users.username}</span>
				등록일 : <span style="margin-right: 20px;"><fmt:formatDate
						pattern="yyyy-MM-dd HH:mm" value="${inquirys.createDate}" /></span> 조회수
				: <span style="margin-right: 20px;">${inquirys.count}</span>
			</div>
			<h6>${inquirys.title}</h6>

		</div>
		<div>
			<div id="content_detail">
				<p>${inquirys.content}</p>
			</div>
		</div>
		<div id="detail_buttons">
			<button class="btn btn-secondary"
				onclick="location.href='/auth/inquiry'">목록</button>
			<c:if test="${inquirys.users.id == principal.user.id}">
				<button class="btn btn-danger" id="btn-delete">삭제</button>
				<a href="/inquiry/${inquirys.id}/inquiry_board_updateForm"
					class="btn btn-warning">수정</a>
			</c:if>
		</div>

		<!-- 댓글 -->
		<div id="reply">
			<div id="reply_div">
				<div>
					<h5>댓글 작성</h5>
					<div id="reply_input_box">
						<div id="reply_input_box2">
							<textarea id="reply_content"
								placeholder="닉네임: ${principal.user.username}"></textarea>
						</div>
						<c:choose>
							<c:when test="${principal.user.roles  == 'ADMIN' or inquirys.users.id == principal.user.id}">
								<div id="reply_btn">
									<button type="submit" id="btn-reply-save">등록</button>
								</div>
							</c:when>
							<c:otherwise>
								<div id="reply_btn" style="display: none;">
									<button type="submit" id="btn-reply-save">등록</button>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</div>

			<div>
				<c:forEach var="reply" items="${reply}">
					<table class="table_reply" id="table">
						<colgroup>
							<col>
							<col width="140px;">
						</colgroup>
						<tbody>
							<tr>
								<td style="font-weight: bold">${reply.users.username}</td>
								<td class="second_col"><fmt:formatDate
										pattern="yyyy-MM-dd HH:mm" value="${reply.createDate}" /></td>
							</tr>
							<tr>
								<td class="inquiry_title" colspan="2">${reply.content}</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>
			</div>
		</div>

	</div>
	<br>

</body>
<script type="text/javascript" src="/js/inquiry.js"></script>
<%@ include file="../layout/footer.jsp"%>