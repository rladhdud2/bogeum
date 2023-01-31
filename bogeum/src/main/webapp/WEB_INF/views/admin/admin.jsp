<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset.css">
    <!-- <link rel="stylesheet" href="css/main.css"> -->
    <link rel="stylesheet" href="css/admin.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <style>
    </style>
</head>
<body>
<div class="header">헤더부분</div>
<div class="admin-container">
    <ul class="manage-menu">
        <li><a href="#members" id="members-tab">회원관리</a></li>
        <li><a href="#products" id="products-tab">상품관리</a></li>
        <li><a href="#orders" id="orders-tab">주문관리</a></li>
        <li><a href="#sales" id="sales-tab">매출표</a></li>
    </ul>
    <div class="tab-content">
        <div id="members">
            <table>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>가입날짜</th>
                    <th>관리</th>
                </tr>
                </thead>
                <tbody>
                <!-- 테이블 데이터 삽입 -->
                <tr>
                    <td>1</td>
                    <td>test</td>
                    <td>kim</td>
                    <td>test@email.com</td>
                    <td>2022-01-01</td>
                    <td>
                        <button class="admin-button">탈퇴</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>test</td>
                    <td>kim</td>
                    <td>test@email.com</td>
                    <td>2022-01-01</td>
                    <td>
                        <button class="admin-button">탈퇴</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>test</td>
                    <td>kim</td>
                    <td>test@email.com</td>
                    <td>2022-01-01</td>
                    <td>
                        <button class="admin-button">탈퇴</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>test</td>
                    <td>kim</td>
                    <td>test@email.com</td>
                    <td>2022-01-01</td>
                    <td>
                        <button class="admin-button">탈퇴</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>test</td>
                    <td>kim</td>
                    <td>test@email.com</td>
                    <td>2022-01-01</td>
                    <td>
                        <button class="admin-button">탈퇴</button>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="page_wrap"  style="display:flex; justify-content:space-evenly ;">
                <input type="text" placeholder="Search..." id="searchInput" style="width: 150px;">
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
                <div style="width: 150px;"></div>
            </div>
        </div>

        <div id="products">
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
                <tr>
                    <td style="width: 5%;">1</td>
                    <td style="width: 15%;">카테고리</td>
                    <td style="width: 25%;">상품</td>
                    <td style="width: 20%;">80,000</td>
                    <td style="width: 10%;">4.5</td>
                    <td style="width: 25%;">
                        <button class="admin-button">수정</button>
                        <button class="admin-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>카테고리</td>
                    <td>상품</td>
                    <td>80,000</td>
                    <td>4.5</td>
                    <td>
                        <button class="admin-button">수정</button>
                        <button class="admin-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>카테고리</td>
                    <td>상품</td>
                    <td>80,000</td>
                    <td>4.5</td>
                    <td>
                        <button class="admin-button"> 수정</button>
                        <button class="admin-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>카테고리</td>
                    <td>상품</td>
                    <td>80,000</td>
                    <td>4.5</td>
                    <td>
                        <button class="admin-button">수정</button>
                        <button class="admin-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>카테고리</td>
                    <td>상품</td>
                    <td>80,000</td>
                    <td>4.5</td>
                    <td>
                        <button class="admin-button">수정</button>
                        <button class="admin-button">삭제</button>
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
<div class="footer">푸터부분</div>

<script>

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