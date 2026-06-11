<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::market/market-cart</title>
        <script>
        	document.addEventListener('DOMContentLoaded', function() {
        		
        		
        	
        	}); // DOMContentLoaded End
        
        </script>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/market/checkout/checkout.css">
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

                    <!-- 내용 -->
                    <section>
                        <a href="#">장바구니 전체(10)</a>
                        <table id="checkTable">
                            <tr>
                                <th>이미지</th>
                                <th>종류</th>
                                <th>상품명</th>
                                <th>수량</th>
                                <th>할인</th>
                                <th>포인트</th>
                                <th>가격</th>
                                <th>소계</th>
                            </tr>
                            <c:forEach var="dto" items="${cartDtoList}">
	                            <tr>
	                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
	                                <td>${dto.prodType}</td>
	                                <td>${dto.prodName}</td>
	                                <td>${dto.prodQty}</td>
	                                <td>${dto.prodDiscount}%</td>
	                                <td>${dto.prodPoint}P</td>
	                                <td>${dto.prodPrice }</td>
	                                <td><span>${dto.prodTotalPrice}</span>원</td>
	                            </tr>
                            </c:forEach>
                        </table>
                        <h3>주문정보 입력</h3>
                        <form id="orderForm" action="/farmstory/market/checkout/order.do" method="post">
	                        <table id="orderInput">
	                            <tr>
	                                <td>주문자</td>
	                                <td><input type="text"></td>
	                            </tr>
	                            <tr>
	                                <td>휴대폰</td>
	                                <td><input type="text"></td>
	                            </tr>
	                            <tr>
	                                <td>포인트사용</td>
	                                <td>
	                                    <input type="text"><button>사용하기</button><br>
	                                    사용가능 2,000
	                                </td>
	                            </tr>
	                            <tr>
	                                <td>받는분</td>
	                                <td><input type="text" name="receiverName"></td>
	                            </tr>
	                            <tr>
	                                <td>연락처</td>
	                                <td><input type="text" name="receiverHp"></td>
	                            </tr>
	                            <tr>
	                                <td>배송주소</td>
	                                <td>
	                                    <input type="text" name="receiverZip"><img src="/farmstory/images/user/btn_post_search.gif"><br>
	                                    <input type="text" name="receiverAddr" placeholder="기본주소 검색"><br>
	                                    <input type="text" name="receiverDetailAddr" placeholder="상세주소 입력">
	                                </td>
	                            </tr>
	                            <tr>
	                                <td>결제방법</td>
	                                <td>
	                                    <input type="radio" name="payment" value="계좌이체"> 계좌이체 
	                                    <input type="radio" name="payment" value="신용카드"> 신용카드 
	                                    <input type="radio" name="payment" value="체크카드"> 체크카드 
	                                    <input type="radio" name="payment" value="휴대폰"> 휴대폰 
	                                </td>
	                            </tr>
	                            <tr>
	                                <td>기타</td>
	                                <td>
	                                    <textarea rows="4" cols="30" name="etc"></textarea>
	                                </td>
	                            </tr>
	                        </table>
	                        <div>
	                            <table>
	                                <tr>
	                                    <th colspan="2">최종결제정보</th>
	                                </tr>
	                                <tr>
	                                    <td>상품수</td>
	                                    <td id="prodCount">1</td>
	                                </tr>
	                                <tr>
	                                    <td>상품금액</td>
	                                    <td>27,000</td>
	                                </tr>
	                                <tr>
	                                    <td>할인금액</td>
	                                    <td>5,000원</td>
	                                </tr>
	                                <tr>
	                                    <td>배송비</td>
	                                    <td>5,000원</td>
	                                </tr>
	                                <tr>
	                                    <td>포인트</td>
	                                    <td>4,000원</td>
	                                </tr>
	                                <tr>
	                                    <td>전체주문금액</td>
	                                    <td>22,000</td>
	                                </tr>
	
	                            </table>
	                            <div>주문하기</div>
	                        </div>
                        </form>
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