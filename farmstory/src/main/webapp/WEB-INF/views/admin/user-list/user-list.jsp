<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/user-list</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global-style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/user-list/user-list.css">
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

            <h3>회원목록</h3>

            <!-- 회원 목록 -->
            <article class="user">

                <table>
                    <thead>
                        <tr>
                            <th><input type="checkbox"></th>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>별명</th>
                            <th>이메일</th>
                            <th>휴대폰</th>
                            <th>등급</th>
                            <th>가입일</th>
                            <th>확인</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:choose>
                            <c:when test="${empty users}">
                                <tr>
                                    <td colspan="9">등록된 회원이 없습니다.</td>
                                </tr>
                            </c:when>

                            <c:otherwise>
                                <c:forEach var="user" items="${users}">
                                    <tr>
                                        <td>
                                            <input type="checkbox" name="chk" value="${user.id}">
                                        </td>
                                        <td>${user.id}</td>
                                        <td>${user.name}</td>
                                        <td>${user.nickname}</td>
                                        <td>${user.email}</td>
                                        <td>${user.phone}</td>
                                        <td>${user.role}</td>
                                        <td>${user.createdAt}</td>
                                        <td>
                                            <a href="#">[상세확인]</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
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