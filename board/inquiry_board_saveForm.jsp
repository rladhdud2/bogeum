<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="/css/notice_board_saveForm.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<body>
<div class="board_wrap">
   <div class="board_title">
      <strong>공지사항</strong>
      <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
   </div>
   <div class="board_write_wrap">
      <div class="board_write">
         <div class="title">
            <dl>
               <dt>제목</dt>
               <dd><input type="text" placeholder="제목 입력"></dd>
            </dl>
         </div>
         <div class="cont">
            <textarea rows="5" class="form-control summernote" id="content"></textarea>
         </div>
      </div>
      <div class="bt_wrap">
         <a href="view.html" class="on">등록</a>
         <a href="list.html">취소</a>
      </div>
   </div>
</div>

<script>
   $('.summernote').summernote({
      tabsize:2,
      height:300
   });
</script>
</body>
</html>