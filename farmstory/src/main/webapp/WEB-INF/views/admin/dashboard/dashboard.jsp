<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::dashboard</title>

    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/admin/dashboard/dashboard.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="./dashboard.html">
            <img src="/farmstory/images/admin/admin_logo.jpg" alt="logo">
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

            <h2 class="main-title">관리자 메인</h2>

            <!-- 상품현황 -->
            <article class="product-status">

                <div class="table-title">
                    <span>상품현황</span>
                    <a href="${pageContext.request.contextPath}/admin/productList.do">+ 더보기</a>
                </div>

                <table>
                    <thead>
                    <tr>
                        <th>상품번호</th>
                        <th>상품명</th>
                        <th>구분</th>
                        <th>가격</th>
                        <th>재고</th>
                        <th>등록일</th>
                    </tr>
                    </thead>

                    <tbody>
						<c:forEach var="product" items="${products}" begin="0" end="2">
						    <tr>
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

            </article>

            <!-- 주문현황 -->
            <article class="product-status">

                <div class="table-title">
                    <span>주문현황</span>
                    <a href="#">+ 더보기</a>
                </div>

                <table>
                    <thead>
                    <tr>
                        <th>주문번호</th>
                        <th>상품명</th>
                        <th>판매가격</th>
                        <th>수량</th>
                        <th>배송비</th>
                        <th>합계</th>
                        <th>주문자</th>
                        <th>주문일</th>
                    </tr>
                    </thead>

                    <tbody>
						<c:forEach var="order" items="${orders}" begin="0" end="2">
						    <tr>
						        <td>${order.orderId}</td>
						        <td>${order.prodName}</td>
						        <td>${order.totProdPrice}원</td>
						        <td>${order.totProdQty}개</td>
						        <td>${order.totDeliveryCost}원</td>
						        <td>${order.totPrice}원</td>
						        <td>${order.receiverName}</td>
						        <td>${order.createdAt.substring(0, 10)}</td>
						    </tr>
						</c:forEach>
                    </tbody>
                </table>

            </article>

            <!-- 회원현황 -->
            <article class="product-status">

                <div class="table-title">
                    <span>회원현황</span>
                    <a href="#">+ 더보기</a>
                </div>

                <table>
                    <thead>
                    <tr>
                        <th>회원아이디</th>
                        <th>이름</th>
                        <th>닉네임</th>
                        <th>휴대폰</th>
                        <th>이메일</th>
                        <th>등급</th>
                        <th>회원가입일</th>
                    </tr>
                    </thead>

                    <tbody>
				        <c:forEach var="user" items="${users}" begin="0" end="2">
				            <tr>
				                <td>${user.id}</td>
				                <td>${user.name}</td>
				                <td>${user.nickname}</td>
				                <td>${user.phone}</td>
				                <td>${user.email}</td>
				                <td>${user.role}</td>
				                <td>${user.createdAt.substring(0, 10)}</td>
				            </tr>
				        </c:forEach>
                    </tbody>
                </table>

            </article>

        </section>

    </main>

    <!-- 푸터 -->
    <footer>
        <span>FARMSTORY ADMINISTRATOR Version 1.0.1</span>
        <span>Copyrightⓒ 김철학(개발에반하다.) All rights reserved.</span>
    </footer>

</div>
</body>
</html>