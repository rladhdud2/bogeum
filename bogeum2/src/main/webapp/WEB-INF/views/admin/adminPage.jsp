<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="/css/admin.css">
<%--<link rel="stylesheet" href="/css/reset.css">--%>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<style>
  a {
    text-decoration: none;
    color: black;
  }
</style>
  <!-- <div class="header">배너부분</div> -->
  <div class="admin-container">
    <ul class="manage-menu">
      <li><a href="#members" id="members-tab">회원관리</a></li>
      <li><a href="#products" id="products-tab">상품관리</a></li>
      <li><a href="#orders" id="orders-tab">주문관리</a></li>
      <li><a href="#sales" id="sales-tab">매출표</a></li>
    </ul>
    <div class="tab-content">

        <div id="members">
          <!-- 정렬 및 검색 탭 -->
          <form action="/admin" method="GET" class="">
            <div class="search-input">
              <select id="select" class="" onchange="selectSearchType()">
                <option value="username">아이디</option>
                <option value="username2">이름</option>
              </select>
              <input type="hidden" name="category" id="category" value="${param.category}">
              <input type="hidden" name="searchType" id="searchType" value="username">

              <input type="text" class="searchTerm" placeholder="search..." name="searchKeyword">
              <button type="submit" class="search-btn" >검색

              </button>
            </div>
          </form>



<%--          <input type="text" placeholder="Search..." id="searchInput" style="width: 150px;">--%>
          <table>
            <thead>
              <tr>
                <th>번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>이메일</th>
                <th>전화번호</th>
                <th>가입날짜</th>
                <th>관리</th>
              </tr>
            </thead>
            <tbody>
              <!-- 테이블 데이터 삽입 -->

              <c:forEach var="user" items="${users.content}">
                <tr class="line">
                  <th>${user.id}</th>
                  <th>${user.username}</th>
                  <th>${user.username2}</th>
                  <th>${user.email}</th>
                  <th>${user.tel}</th>
                  <th><fmt:formatDate value="${user.createDate}" pattern="YYYY-MM-dd"/></th>
                  <th><button class="admin-button" onclick="deleteById(${user.id})">회원 삭제</button></th>
                </tr>
              </c:forEach>
            </tbody>
          </table>


<%--          <div class="page_wrap"  style="display:flex; justify-content:space-evenly ;">--%>
<%--            <div style="width: 150px;"></div>--%>
<%--            <div class="page_nation">--%>
<%--              <a class="arrow pprev" href="#"></a>--%>
<%--              <a class="arrow prev" href="#"></a>--%>
<%--              <a href="#" class="active">1</a>--%>
<%--              <a href="#">2</a>--%>
<%--              <a href="#">3</a>--%>
<%--              <a href="#">4</a>--%>
<%--              <a href="#">5</a>--%>
<%--              <a href="#">6</a>--%>
<%--              <a href="#">7</a>--%>
<%--              <a href="#">8</a>--%>
<%--              <a href="#">9</a>--%>
<%--              <a href="#">10</a>--%>
<%--              <a class="arrow next" href="#"></a>--%>
<%--              <a class="arrow nnext" href="#"></a>--%>
<%--            </div>--%>
<%--            <div style="width: 150px;"></div>--%>
<%--          </div>--%>

          <c:set var="startPage" value="${users.number - users.number % 5}" />
          <ul class="pagination justify-content-center">
            <li class="page-item <c:if test='${users.number < 5}'>disabled</c:if>">
              <a class="page-link" href="/admin?category=${param.category}&page=${startPage - 5}&searchType=${param.searchType}&searchKeyword=${param.searchKeyword}"><</a>
            </li>
            <c:forEach var="page" begin="1" end="5">
              <c:if test="${(startPage + page) <= users.totalPages}">
                <li class="page-item <c:if test='${users.number eq startPage + page - 1}'>active</c:if>">
                  <a class="page-link" href="/admin?category=${param.category}&page=${startPage + page - 1}&searchType=${param.searchType}&searchKeyword=${param.searchKeyword}">${startPage + page}</a>
                </li>
              </c:if>
            </c:forEach>
            <li class="page-item <c:if test='${startPage + 5 > users.totalPages}'>disabled</c:if>">
              <a class="page-link" href="/admin?category=${param.category}&page=${startPage + 5}&searchType=${param.searchType}&searchKeyword=${param.searchKeyword}">></a>
            </li>
          </ul>

        </div>

      
      <div id="products">
      	<div class="update_box">
      		<button onclick="location.href='/save_item'">상품 등록</button>
      	</div>
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>카테고리</th>
              <th>상품명</th>
              <th>가격</th>
              <th>평점?</th>
              <th>관리</th>
            </tr>
          </thead>
          <tbody>
            <!-- 테이블 데이터 삽입 -->
            <c:forEach var="items" items="${ItemList.content}">
            <tr>
              <input type="hidden" id="id" value="${items.id}">
              <td style="width: 5%;">${items.id}</td>
              <td style="width: 15%;">${items.category}</td>
              <td style="width: 25%;">${items.name}</td>
              <td style="width: 20%;">${items.price}</td>
              <td style="width: 10%;">4.5</td>
              <td style="width: 25%;">
                <button class="admin-button" onclick="location.href='/update_item/${items.id}'">수정</button>
                <button class="admin-button" onclick="Delete_item()">삭제</button>
              </td>
            </tr>
            </c:forEach>
          </tbody>
        </table>
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
      <div id="orders">
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>주문일시</th>
              <th>주문자(ID)</th>

              <th>배송지</th>
              <th>배송상태</th>
              <th>관리</th>
            </tr>
          </thead>
          <tbody>
            <!-- 테이블 데이터 삽입 -->
            <tr>
              <td>1</td>
              <td>2022.1.1</td>
              <td>test</td>

              <td>경기도 수원시 장안구 천천로 테스트</td>
              <td>배송 전</td>
              <td>
                <button class="admin-button">배송상태변경</button>
                <button class="admin-button">주문취소</button>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>2022.1.1</td>
              <td>test</td>

              <td>경기도 수원시 장안구 천천로 테스트</td>
              <td>배송 전</td>
              <td>
                <button class="admin-button">배송상태변경</button>
                <button class="admin-button">주문취소</button>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>2022.1.1</td>
              <td>test</td>

              <td>경기도 수원시 장안구 천천로 테스트</td>
              <td>배송 전</td>
              <td>
                <button class="admin-button">배송상태변경</button>
                <button class="admin-button">주문취소</button>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>2022.1.1</td>
              <td>test</td>

              <td>경기도 수원시 장안구 천천로 테스트</td>
              <td>배송 전</td>
              <td>
                <button class="admin-button">배송상태변경</button>
                <button class="admin-button">주문취소</button>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>2022.1.1</td>
              <td>test</td>

              <td>경기도 수원시 장안구 천천로 테스트</td>
              <td>배송 전</td>
              <td>
                <button class="admin-button">배송상태변경</button>
                <button class="admin-button">주문취소</button>
              </td>
            </tr>
          </tbody>
        </table>
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
      <div id="sales" style="text-align:center;">
        <div id="chart_div">
          내용
        </div>
      </div>
    </div>
  

  </div>
  <script type="text/javascript" src="/js/Product.js"></script>
<script type="text/javascript" src="/js/admin.js"></script>
  <%@ include file="../layout/footer.jsp"%>
 
  <script>

    // const pageLinks = document.querySelectorAll(".page_nation a");
    // const pages = [];
    // for (let i = 0; i < pageLinks.length; i++) {
    //   const pageLink = pageLinks[i];
    //   if (pageLink.textContent) {
    //     pages.push(pageLink);
    //   }
    // }
    //
    // let currentPage = 0;
    // const displayPage = pageIndex => {
    //   pages[currentPage].classList.remove("active");
    //   currentPage = pageIndex;
    //   pages[currentPage].classList.add("active");
    //   // 여기에 페이지에 맞는 데이터 로딩 코드를 추가합니다.
    // };
    //
    // for (let i = 0; i < pages.length; i++) {
    //   pages[i].addEventListener("click", () => {
    //     displayPage(i);
    //   });
    // }

    // displayPage(0);

    $(document).ready(function() {
      $('.manage-menu a').click(function(e) {
        e.preventDefault();
        $('.manage-menu a').removeClass('active');
        $(this).addClass('active');
        var target = $(this).attr('href');
        $('.tab-content > div').hide();
        $(target).show();
      });
    });


    // Load the Visualization API and the corechart package.
    google.charts.load('current', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {

      // Create the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Topping');
      data.addColumn('number', '매출액');
      data.addRows([
        ['카테고리', 30000],
        ['카테고리', 1000],
        ['카테고리', 5000],
        ['카테고리', 18000],
        ['카테고리', 20000],
        ['카테고리', 20000],
        ['카테고리', 20000],
        ['카테고리', 20000],
        ['카테고리', 20000],
        ['카테고리', 20000],
      ]);

      // Set chart options
      var options = {'title':'제목',
                     'width':1200,
                     'height':500};

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }

  </script>
</body>
</html>