<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/product-list</title>

    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/admin/product-list/product-list.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="./dashboard.html">
            <img src="./images/admin/admin_logo.jpg" alt="logo">
        </a>

        <div class="top-menu">
            <a href="#">HOME | </a> 
            <a href="#">로그아웃 | </a> 
            <a href="#">고객센터</a>
        </div>
        
    </header>

    <!-- 메인 -->
    <main>

        <!-- 좌측 메뉴 -->
        <aside>

            <h3>주요기능</h3>

            <div class="menu">
                <span>상품관리</span>
                <ul>
                    <li><a href="#">ㄴ 상품목록</a></li>
                    <li><a href="#">ㄴ 상품등록</a></li>
                </ul>
            </div>

            <div class="menu">
                <span>주문관리</span>
                <ul>
                    <li><a href="#">ㄴ 주문목록</a></li>
                </ul>
            </div>

            <div class="menu">
                <span>회원관리</span>
                <ul>
                    <li><a href="#">ㄴ 회원목록</a></li>
                </ul>
            </div>

        </aside>


        <!-- 우측 컨텐츠 -->
        <section>

            <h3>상품목록</h3>

            <!-- 상품 목록 -->
            <article class="product-status">

                <table>
                    <thead>
                    <tr>
                        <th><input type="checkbox"></th>
                        <th>사진</th>
                        <th>상품번호</th>
                        <th>상품명</th>
                        <th>구분</th>
                        <th>가격</th>
                        <th>재고</th>
                        <th>등록일</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>#샘플사진#</td>
                        <td>1011</td>
                        <td>사과 500g</td>
                        <td>과일</td>
                        <td>4,000원</td>
                        <td>100</td>
                        <td>2023-01-01</td>
                    </tr>
                    </tbody>
                </table>

            </article>

        </section>

    </main>


    <!-- 푸터 -->
    <footer>
        <p>
            Copyright(C)Farmstory All rights reserved.
            FARMSTORY ADMINISTRATOR Version 1.0.1
        </p>
    </footer>

</div>

</body>
</html>