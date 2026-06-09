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
            <header>
                <!-- 로고 -->
                <a href="/farmstory/main/main.do" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="/farmstory/main/main.do">HOME</a>
                    <a href="#">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">관리자</a>
                    <a href="#">고객센터</a>
                </p>

                <!-- 오른쪽 테스트 배너 -->
                <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">
                
                <!-- 메인 메뉴(GNB) -->
                <ul class="gnb">
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="/farmstory/market/product-list/product-list.do">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </header>

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
            <footer>
                <img src="/farmstory/images/footer_logo.png">
                <div>
                    <p>(주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br>
                        등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                        대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                    </p>
                    <p>
                        copyrightⓒ 김철학(개발에반하다) All rights reserved.
                    </p>
                    <p>farmstory ver1.0.1</p>
                </div>
            </footer>
        </div>
    </body>
</html>