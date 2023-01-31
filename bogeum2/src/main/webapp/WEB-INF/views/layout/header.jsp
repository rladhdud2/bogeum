<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<link rel="stylesheet" href="/css/header.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    
    
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" 
rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>    




</head>
<body>
    <header>    
    
    	<c:choose>
    		<c:when test="${empty principal}">
    		<div id="login"><a href="/auth/loginForm">로그인</a>&nbsp; | &nbsp;<a href="auth/joinForm">회원가입</a> &nbsp;&nbsp;&nbsp;&nbsp;</div>
	        </c:when>
	        <c:otherwise>
	        <div id="login"><a href="/auth/loginForm">마이페이지</a>&nbsp; | &nbsp;<a href="auth/joinForm">로그아웃</a> &nbsp;&nbsp;&nbsp;&nbsp;</div>
	        </c:otherwise>
        </c:choose>
        
        
        <div id="header2">
          <div id="logo"><a href="/"><img src="/img/logo.png"></a></div> 
          <div id="headernav">
            <ul class="nav">
                <li><a href="#">보호소</a></li>
                <li><a href="#">커뮤니티</a></li>
                <li><a href="#">쇼핑몰</a></li>
            </ul>
          </div>
        </div>
      </header>  
