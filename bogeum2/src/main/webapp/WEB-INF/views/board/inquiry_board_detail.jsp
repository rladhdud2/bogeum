<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/css/reset.css">
<%--Jstl--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../layout/header.jsp" %>
<title>보금자리>문의사항</title>
<!-- Font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!-- Css-->
<link rel="stylesheet" href="/css/boardDetail.css">
</head>
<body>
<div class="board_wrap">
    <div class="board_title">
        <strong>문의사항</strong>
        <p>문의사항입니다 </p>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <span id="id" style="display: none;">${inquirys.id}</span>
            <div class="title">
                ${inquirys.title}
            </div>
            <div class="info">
                <dl>
                    <dt>번호</dt>
                    <dd>${inquirys.id}</dd>
                </dl>
                <dl>
                    <dt>작성자</dt>
                    <dd>${inquirys.users.username}</dd>
                </dl>
                <dl>
                    <dt>작성일</dt>
                    <dd><fmt:formatDate
                            pattern="yyyy-MM-dd HH:mm" value="${inquirys.createDate}"/></dd>
                </dl>
                <dl>
                    <dt>조회수</dt>
                    <dd>${inquirys.count}</dd>
                </dl>
            </div>
            <div class="cont">
                <p>${inquirys.content}</p>
            </div>
        </div>
        <div class="bt_wrap">
            <button class="btn" onclick="location.href='/auth/inquiry'">목록</button>
            <c:if test="${inquirys.users.id == principal.user.id}">
                <a class="btn bt1" href="/inquiry/${inquirys.id}/inquiry_board_updateForm">수정</a>
                <button id="btn_delete" class="btn bt2">삭제</button>
            </c:if>
        </div>
        <!-- 댓글 -->
        <div id="reply">
            <div id="reply_div">
                <div>
                    <h5>댓글</h5>
                    <div id="reply_input_box">
                        <div id="reply_input_box2">
							<textarea id="reply_content"
                                      placeholder="닉네임: ${principal.user.username}">1231</textarea>
                        </div>
                        <c:choose>
                            <c:when test="${principal.user.roles  == 'ADMIN' or inquirys.users.id == principal.user.id}">
                                <div id="reply_btn">
                                    <button type="submit" id="btn_reply_save" class="bt3">등록하기</button>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div id="reply_btn" >
                                    <button type="submit" id="btn_reply_save" class="bt3">등록하기</button>
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
                                    pattern="yyyy-MM-dd HH:mm" value="${reply.createDate}"/></td>
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
</div>
</div>
</body>
<script type="text/javascript" src="/js/inquiry.js"></script>
<%@ include file="../layout/footer.jsp" %>