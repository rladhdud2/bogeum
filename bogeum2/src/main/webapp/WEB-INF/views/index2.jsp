<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>

<%@ include file="layout/header.jsp"%>


    <div class="banner">        
        <div class="bannercontainer">
            <div class="inner"><a href="#"><img src="/img/banner/banner3.jpg"></a></div>
            <div class="inner"><a href="#"><img src="/img/banner/banner2.png"></a></div>
            <div class="inner"><a href="#"><img src="/img/banner/banner1.jpg"></a></div>
        </div>        
    </div>
    <div class="buttonbox">
        <button class="button1"></button>
        <button class="button2"></button>
        <button class="button3"></button>
    </div>



    <div class="container">
        <div class="main">
            <div id="content1">              
                <div class="contenttitle"> &nbsp보호소</div>  
                <div id="content1items">
                    <ul>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/cat1.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/dog5.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/cat3.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/cat4.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/dog1.jpeg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/dog2.jpeg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/dog3.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>
                        <li><a href="#">
                            <div id="itemphoto"><img src="/img/content1item/dog4.jpg"></div><br>           
                            <div id="itemdetail">&nbsp공고날짜 : 2023년 1월 25일
                                <br>&nbsp발견장소 : 수원역</div>
                            </a>
                        </li>                        
                    </ul>
                </div> 
            </div>
                 
        </div>
    </div>
 
    <div class="banner">
        <div class="bannercontainer">
            <div class="inner"><a href="#"><img src="/img/banner/banner2.png"></a></div>
        </div>
    </div>

    <div class="container">
        <div id="content2">
            <div class="board">
                <div class="contenttitle2"> 입양홍보</div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp첫번째 게시글</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp두번째 게시글</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
            </div>
            <div class="board">
                <div class="contenttitle2"> 공지사항</div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
                <div class="content2">
                    <div class="content2title"><a href="#">&nbsp게시글 제목</a></div>
                    <div class="content2time">작성시간</div>
                </div>
            </div>
        </div>

        <div id="productbox">
            <div id="productinfo">
                <div id="productstitle">추천 상품</div>
                <div id="productintro">보금자리에서만 만나볼 수 있는 특별한 상품들을 지금 소개합니다</div>
                <div><a href="#">더보기+</a></div>
            </div>
            <div id="products">
                <div class="product"><a href="#"><img src="/img/cattower.avif"></a></div>
                <div class="product"><a href="#"><img src="/img/catcoution.jpg"></a></div>
                <div class="product"><a href="#"><img src="/img/catfood.jpg"></a></div>
            </div>
        </div>
    </div>

  <%@ include file="layout/footer.jsp"%>

<script>
    document.querySelector('.button1').addEventListener('click', function() {
        document.querySelector('.bannercontainer').style.transform = 'translate(0px)';       
    })
    document.querySelector('.button2').addEventListener('click', function() {
        document.querySelector('.bannercontainer').style.transform = 'translate(-1900px)';
    })
    document.querySelector('.button3').addEventListener('click', function() {
        document.querySelector('.bannercontainer').style.transform = 'translate(-3800px)';
    })
</script>
</body>
</html>