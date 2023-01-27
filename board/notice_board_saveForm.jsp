<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="/css/notice_board_saveForm.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<div class="container" id="container_saveForm">

   <h2>공지사항</h2>
      <form action="" id="form_total">
         <div class="form-group">
            <label for="title">Title</label> 
            <input type="text" class="form-control" placeholder="제목을 입력하세요." id="title">
         </div>
         <div class="form-group">
         <label for="content">Content</label>
            <textarea rows="5" class="form-control summernote" id="content"></textarea>
         </div>
      </form>
      
      <button id="btn-save" class="btn btn-primary">저장</button>
   </div>
   <script>
      $('.summernote').summernote({
         tabsize:2,
         height:300
      });
   </script>
</body>
<script type="text/javascript" src="/js/notice.js"></script>
<%@ include file="../layout/footer.jsp"%>