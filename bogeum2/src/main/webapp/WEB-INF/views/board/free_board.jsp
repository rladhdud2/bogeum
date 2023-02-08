<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>보금자리>분실/습득</title>
<%--Font--%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<%--Css--%>
<link rel="stylesheet" href=/css/boardReset.css>
<link rel="stylesheet" href=/css/inquiry_board.css>
<!--fontawesome-->
<script src="https://kit.fontawesome.com/7e47ddf105.js" crossorigin="anonymous"></script>
<%--jstl--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
           uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</sec:authorize>
<%--Header--%>
<%@ include file="../layout/header.jsp" %>
<body>
<%--Menu--%>
<div class="container">
    <div class="board_menu">
        <div class="subject"><b>커뮤니티</b></div>
        <br>
        <div class="menuList"><a href="/auth/notice"><i class="fa-solid fa-bell"></i> 공지사항</a></div>
        <br>
        <div class="menuList"><a href="/auth/free"><i class="fa-regular fa-pen-to-square"></i> 자유게시판</a></div>
        <br>
        <div class="menuList"><a href="#"><i class="fa-solid fa-cat"></i> 입양안내</a></div>
        <br>
        <div class="menuList"><a href="/auth/findboard"><i class="fa-solid fa-person-circle-question"></i> 분실/습득</a></div>
        <br>
        <div class="menuList"><a href="/auth/inquiry"><i class="fa-solid fa-comment"></i> 문의사항</a></div>
        <br>
    </div>
    <div class="board_wrap">
        <div class="board_title">
            <strong>자유게시판</strong>
            <p>자유게시판</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                </div>
                <c:forEach var="free" items="${free.content}">
                    <div>
                        <div class="num">${free.id}</div>
                        <div class="title"><a href="/free/${free.id}">${free.title}</a></div>
                        <div class="writer">${free.users.username}</div>
                        <div class="date"><fmt:formatDate
                                pattern="yyyy-MM-dd HH:mm" value="${free.createDate}"/></div>
                        <div class="count">${free.count}</div>
                    </div>
                </c:forEach>
            </div>
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            <div class="bt_wrap">
                <form name="searchForm" method="post" action="#">
                    <select name="searchOption">
                        <option value="title">제목</option>
                        <option value="writer">작성자</option>
                        <option value="content">내용</option>
                        <option value="all">제목 +작성자 + 내용</option>
                    </select>
                    <input name="keyword" id="keyword" value="#">
                    <input type="submit" id="search" name="submit" value="">
                </form>
                <c:choose>
                    <c:when test="${principal.user.roles == 'USER'}">
                        <div>
                            <button type="button" id="btnWrite" onclick="location.href = '/free_board_saveForm'">글쓰기</button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div>
                            <button type="button" id="btnWrite" onclick="location.href = '/free_board_saveForm'">글쓰기</button>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp"%>
