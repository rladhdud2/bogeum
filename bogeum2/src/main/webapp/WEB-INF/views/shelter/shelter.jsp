<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
  <%@ include file="../layout/header.jsp"%>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/shelter.css">



  <!-- <div class="header">
    헤더부분
  </div> -->
  <!-- <div class="banner">
    배너부분
  </div> -->
<!--   <header style="border-bottom: 1px solid #e9e9e9;">    
    <div id="login"><a href="#">로그인</a>&nbsp | &nbsp<a href="#">회원가입</a> &nbsp&nbsp&nbsp&nbsp</div>
    <div id="header2">
      <div id="logo"><a href="#"><img src="img/logo.png" style="object-fit:fill;"></a></div> 
      <div id="headernav">
        <ul class="nav">
            <li><a href="#">보호소</a></li>
            <li><a href="#">커뮤니티</a></li>
            <li><a href="#">쇼핑몰</a></li>
        </ul>
      </div>
    </div>
  </header> -->

  <div class="container">
    <div class="filter_wrap">
      <div class="control-group">
        <h1>조건</h1>
        <label class="control control--checkbox">내용
          <input type="checkbox" checked="checked"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--checkbox">내용
          <input type="checkbox"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--checkbox">내용
          <input type="checkbox"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--checkbox">내용
          <input type="checkbox"/>
          <div class="control__indicator"></div>
        </label>
      </div>
      <div class="control-group">
        <h1>조건</h1>
        <label class="control control--radio">내용
          <input type="radio" name="radio" checked="checked"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--radio">내용
          <input type="radio" name="radio"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--radio">내용
          <input type="radio" name="radio"/>
          <div class="control__indicator"></div>
        </label>
        <label class="control control--radio">내용
          <input type="radio" name="radio"/>
          <div class="control__indicator"></div>
        </label>
      </div>
      <div class="control-group">
        <h1>지역</h1>
        <div class="select">
          <select>
            <option>First select</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
            <option>Option</option>
          </select>
          <div class="select__arrow"></div>
        </div>
      </div>
      <div class="control-group">
        <h1>공고날짜(~)</h1>
        <input type="date" id="notice-date"> 
      </div>
      <button class="adopt-search">찾기</button>
    </div>

      <!-- <div class="adopt-title">
        제목제목제목
      </div> -->
  
    <div class="pic-wrap">
      <ul class="pic-section">
          <li><a href="#">
              <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
              <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                  <br>발견장소 : 수원역</div></span>
              </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>
          <li><a href="#">
            <div class="pic"><img class="shelter-pic" src="img/cat1.jpg"></div><br>           
            <div class=""><span class="pic-detail">공고날짜 : 2023년 1월 25일
                <br>발견장소 : 수원역</div></span>
            </a>
          </li>

        </ul>
      </div>

     <div class="page_wrap">
      <div class="page_nation">
          <a class="arrow pprev" href="#"></a>
          <a class="arrow prev" href="#"></a>
          <a href="#" class="active">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">6</a>
          <a href="#">7</a>
          <a href="#">8</a>
          <a href="#">9</a>
          <a href="#">10</a>
          <a class="arrow next" href="#"></a>
          <a class="arrow nnext" href="#"></a>
       </div>
      </div>

    </div>
  </div>
<%@ include file="../layout/footer.jsp"%> 
 
</body>
</html>