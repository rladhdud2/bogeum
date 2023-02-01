<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/shelterDetail.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--   <div class="header">
    헤더부분
  </div> -->
  <div class = "card-wrapper">
    
    <div class = "card">
      <!-- card left -->
      <div class = "animal-imgs">
        <div class = "img-display">
          <div class = "img-showcase">
            <img src = "img/cat1.jpg" alt = "캣">
            <img src = "img/cat1.jpg" alt = "캣">
            <img src = "img/cat1.jpg" alt = "캣">
            <img src = "img/cat1.jpg" alt = "캣">
          </div>
        </div>
        <div class = "img-select">
          <div class = "img-item">
            <a href = "#" data-id = "1">
              <img src = "img/cat1.jpg" alt = "캣">
            </a>
          </div>
          <div class = "img-item">
            <a href = "#" data-id = "2">
              <img src = "img/cat1.jpg" alt = "캣">
            </a>
          </div>
          <div class = "img-item">
            <a href = "#" data-id = "3">
              <img src = "img/cat1.jpg" alt = "캣">
            </a>
          </div>
          <div class = "img-item">
            <a href = "#" data-id = "4">
              <img src = "img/cat1.jpg" alt = "캣">
            </a>
          </div>
        </div>
      </div>
      <!-- card right -->
      <div class = "animal-content">
        <h2 class = "animal-title">고양이</h2>
        <a href = "#" class = "animal-link">테스트</a>

  
        <div class = "animal-detail">
          <h2> 상세정보 </h2>
          <p style="font-size: 18px;">고양이 고양이 고양이 </p>
          <ul style="font-size: 16 px;">
            <li>번호 : <span>444450202101068</span></li>
            <li>품종 : <span>[고양이] 한국 고양이</span></li>
            <li>성 : <span>수컷</span></li>
            <li>나이 : <span>2019(년생)</span></li>
            <li>무게 : <span>5(kg)</span></li>
            <li>상태 : <span>보호중</span></li>
            <li>보호소 이름: <span>한국동물구조관리협회</span></li>
            <li>보호소 주소: <span>경기도 양주시 남면 감악산로 63-37 (남면)</span></li>
            <li>보호 지역: <span>경기도 양주시</span></li>
            <li>공고시작 : <span>20220104</span></li>
            <li>공고만료 : <span>20220114</span></li>
          </ul>
        </div>
  
        <div class = "adopt-info">
          <button type = "button" class = "btn">입양신청</button>
        </div>
  

      </div>
    </div>
  </div>


  <script>
    const imgs = document.querySelectorAll('.img-select a');
    const imgBtns = [...imgs];
    let imgId = 1;

    imgBtns.forEach((imgItem) => {
        imgItem.addEventListener('click', (event) => {
            event.preventDefault();
            imgId = imgItem.dataset.id;
            slideImage();
        });
    });
    function slideImage(){
        const displayWidth = document.querySelector('.img-showcase img:first-child').clientWidth;

        document.querySelector('.img-showcase').style.transform = `translateX(${- (imgId - 1) * displayWidth}px)`;
    }
    window.addEventListener('resize', slideImage);
  </script>

  <%@ include file="../layout/footer.jsp"%>
  