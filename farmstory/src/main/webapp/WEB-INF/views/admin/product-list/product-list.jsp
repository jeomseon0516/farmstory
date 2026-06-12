<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/product-list</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global-style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/product-list/product-list.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="${pageContext.request.contextPath}/admin/productList.do">
            <img src="${pageContext.request.contextPath}/images/admin/admin_logo.jpg" alt="logo">
        </a>

        <div class="top-menu">
            <a href="${pageContext.request.contextPath}/main/main.do">HOME | </a> 
            <a href="${pageContext.request.contextPath}/user/logout.do">로그아웃 | </a> 
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
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/productList.do">ㄴ 상품목록</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/productRegister.do">ㄴ 상품등록</a>
                    </li>
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
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>
                                <input type="checkbox" name="chk" value="${product.prodId}">
                            </td>

                            <td>
                                <img class="product-thumb"
                                     src="${pageContext.request.contextPath}/uploads/product/${product.prodListImageStoredName}"
                                     alt="${product.prodName}">
                            </td>

                            <td>${product.prodId}</td>
                            <td>${product.prodName}</td>
                            <td>${product.prodType}</td>
                            <td>${product.prodPrice}원</td>
                            <td>${product.prodStock}</td>
                            <td>${product.createdAt.substring(0, 10)}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <!-- 선택삭제 / 상품등록 -->
                <div class="list-bottom">
                    <div class="delete-area">
                        <button type="button" class="btn-delete">선택삭제</button>
                    </div>

                    <div class="register-area">
                        <a href="${pageContext.request.contextPath}/admin/productRegister.do" class="btn-register">상품등록</a>
                    </div>
                </div>

                <!-- 페이징 -->
                <div class="paging">
                    &lt; [1] [2] [3] [4] [5] &gt;
                </div>

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