<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/shelterDetail.css">
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
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
            <li>정보: <span>내용</span></li>
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