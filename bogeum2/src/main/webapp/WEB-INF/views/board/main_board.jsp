<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/main_board.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--Swiper-->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
    />
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <!--fontawesome-->
    <script src="https://kit.fontawesome.com/7e47ddf105.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="banner1"><img src="/img/BoardBanner_1.png"></div>
<div class="container">
    <div id="content2">
        <div class="board">
            <div class="contenttitle2"> 공지사항</div>
            <div class="content2">
                <div class="content2title">&nbsp첫번째 게시글</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp두번째 게시글</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
        </div>
        <div class="board">
            <div class="contenttitle2"> 문의사항</div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
        </div>
    </div>
    <div id="content3">
        <div class="board">
            <div class="contenttitle2"> 분실/습득</div>
            <div class="content2">
                <div class="content2title">&nbsp첫번째 게시글</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp두번째 게시글</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
        </div>
        <div class="board">
            <div class="contenttitle2"> 자유게시판</div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
            <div class="content2">
                <div class="content2title">&nbsp게시글 제목</div>
                <div class="content2time">2023.01.23</div>
            </div>
        </div>
    </div>
    <div id="content4">
        <div class="contenttitle2"> 입양 지원 / 안내</div>
    </div>
    <div class="information">
        <!-- Swiper -->
        <div class="swiper mySwiper banner2">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="/img/banner_2.png"></div>
                <div class="swiper-slide"><img src="/img/banner_3.png"></div>
                <div class="swiper-slide"><img src="/img/banner_4.png"></div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>

    </div>
</div>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>
</body>
<%@ include file="../layout/footer.jsp"%>