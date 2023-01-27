<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="/css/inquiry_board_updateForm.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<div class="container" id="container_saveForm">
   <h2>고객센터</h2>
   <form id="form_total">
    <input type="hidden" id="id" value="${inquirys.id}">
      <div class="form-group">
         <input type="text" class="form-control" placeholder="제목을 입력하세요." id="title" value="${inquirys.title}">
      </div>
      <div class="form-group">
         <textarea rows="5" class="form-control summernote" id="content">${inquirys.content}</textarea>
      </div>
   </form>
   <button id="btn-update" class="btn btn-primary" style="float: right;">수정</button>
</div>
<script>
   $('.summernote').summernote({
      tabsize: 2,
      height: 300
   });
</script>
<script type="text/javascript" src="/js/inquiry.js"></script>
<%@ include file="../layout/footer.jsp" %>