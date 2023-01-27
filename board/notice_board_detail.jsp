<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/notice_board_detail.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../layout/header.jsp"%>
<body>
   <div id="board_detail_container">
      <h2>공지사항</h2>
      <div id="content_head">
      <div style="float: right;">
          <span id="id" style="margin-right: 20px; display:none;">${notices.id}</span> 
            작성자 : <span style="margin-right: 20px;">${notices.users.username}</span> 
            등록일 : <span style="margin-right: 20px;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${notices.createDate}"/></span>
            조회수 : <span style="margin-right: 20px;">${notices.count}</span>
         </div>
         <h6>${notices.title}</h6>

      </div>
      <div>
         <div id="content_detail">
            <p>${notices.content}</p>
         </div>
      </div>
      <div id="detail_buttons">
         <button class="btn btn-secondary" onclick="location.href='/auth/notice'">목록</button>
         <c:if test="${notices.users.id == principal.user.id}">
            <button class="btn btn-danger" id="btn-delete">삭제</button>
            <a href="/notice/${notices.id}/notice_board_updateForm" class="btn btn-warning">수정</a>
         
         </c:if>
      
      </div>
   </div>
   <br>

</body>
   <script type="text/javascript" src="/js/notice.js"></script>
<%@ include file="../layout/footer.jsp"%>