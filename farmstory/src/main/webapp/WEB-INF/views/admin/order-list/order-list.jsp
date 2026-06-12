<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/order-list</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global-style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/order-list/order-list.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="${pageContext.request.contextPath}/admin/dashboard.do">
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

            <h3>
                <a href="${pageContext.request.contextPath}/admin/dashboard.do" class="main-menu-title">주요기능</a>
            </h3>

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
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/orderList.do">ㄴ 주문목록</a>
                    </li>
                </ul>
            </div>

            <div class="menu">
                <span>회원관리</span>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/userList.do">ㄴ 회원목록</a>
                    </li>
                </ul>
            </div>

        </aside>


        <!-- 우측 컨텐츠 -->
        <section>

            <div class="content-title">
                주문목록
            </div>

            <table>
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox">
                        </th>
                        <th>주문번호</th>
                        <th>상품명</th>
                        <th>판매가격</th>
                        <th>수량</th>
                        <th>배송비</th>
                        <th>합계</th>
                        <th>주문자</th>
                        <th>주문일</th>
                        <th>확인</th>
                    </tr>
                </thead>

                <tbody>
                    <c:choose>
                        <c:when test="${empty orders}">
                            <tr>
                                <td colspan="10">등록된 주문이 없습니다.</td>
                            </tr>
                        </c:when>

                        <c:otherwise>
                            <c:forEach var="order" items="${orders}">
                                <tr>
                                    <td>
                                        <input type="checkbox" name="chk" value="${order.orderId}">
                                    </td>
                                    <td>${order.orderId}</td>
                                    <td>${order.prodName}</td>
                                    <td>${order.totProdPrice}원</td>
                                    <td>${order.totProdQty}</td>
                                    <td>${order.totDeliveryCost}원</td>
                                    <td>${order.totPrice}원</td>
                                    <td>${order.receiverName}</td>
                                    <td>${order.createdAt}</td>
                                    <td>
                                        <a href="#">[상세확인]</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>

            <div class="table-bottom">
                <a href="#">선택삭제</a>
            </div>

            <div class="paging">
                &lt;
                <a href="#">[1]</a>
                <a href="#">[2]</a>
                <a href="#">[3]</a>
                <a href="#">[4]</a>
                <a href="#">[5]</a>
                &gt;
            </div>

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