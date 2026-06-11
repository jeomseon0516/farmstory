<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::market::product-list</title>
    </head>
       <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/market/product-list/product-list.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            <!-- 서브 배너 -->
            <section class="sub-banner">
                <img src="/farmstory/images/sub_top_tit2.png">
            </section>

            <!-- 메인 -->
            <main>
                <!-- 서브 사이드 바 -->
                <aside class="sub-sidebar-aside">
                    <img src="/farmstory/images/sub_aside_cate2_tit.png">
                    <ul>
                        <li><a href="/farmstory/market/product-list/product-list.do"><img src="/farmstory/images/sub_cate2_lnb1_ov.png"></a></li>
                    </ul>
                </aside>

                <!-- 메인 내용 -->
                <article class="main-content">
                    <!-- 메인 컨텐츠 헤더 -->
                    <div class="main-content-header">
                        <img src="/farmstory/images/sub_nav_tit_cate2_tit1.png">

                        <!-- 서브 내비게이션 타이틀 -->
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 장보기 </span>
                                <span class="sub_nav_select">> 장보기</span>
                            </nav>

                        </section>
                    </div>
                    
                    <!-- 본문 내용 -->
                    <section>
	                    <a href="#">전체(10) | 과일 | 야채 | 곡류</a>
	                    <table>
	                        <tr>
	                            <th>이미지</th>
	                            <th>종류</th>
	                            <th>상품명</th>
	                            <th>할인</th>
	                            <th>포인트</th>
	                            <th>판매가격</th>
	                        </tr>
	                        <c:forEach var="dto" items="${dtoList}">
		                        <tr class="table_content">
		                            <td><a href="/farmstory/market/product-view/product-view.do?prodId=${dto.prodId}"><img src="/farmstory/images/market_item1.jpg" width="80px" height="80px"></a></td>
		                            <td><a href="/farmstory/market/product-view/product-view.do?prodId=${dto.prodId}">${dto.prodType}</a></td>
		                            <td><a href="/farmstory/market/product-view/product-view.do?prodId=${dto.prodId}">${dto.prodName}</a></td>
		                            <td>${dto.prodDiscount}%</td>
		                            <td>${dto.prodPoint}p</td>
		                            <td><p>${dto.prodPrice - Math.round(dto.prodPrice * dto.prodDiscount / 100)}원</p><p>${dto.prodPrice}원</p></td>
		                        </tr>
	                        </c:forEach>
	                    </table>
	                    <a href="#"> &lt; [1] [2] [3] [4] [5] &gt;</a>
                    </section>
                </article>
            </main>

            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>