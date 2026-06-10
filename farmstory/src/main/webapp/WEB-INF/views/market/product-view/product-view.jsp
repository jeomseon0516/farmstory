<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::market/market-product-view</title>
        <script>
        	document.addEventListener('DOMContentLoaded', function(){
        		
        		// 합계 가격 계산
        		const price = document.getElementById('prodPrice');
        		const qty = document.getElementById('prodQty');
        		const totalPrice = document.getElementById('totalPrice');
    			const qtyValue = qty.value;
    			const priceValue = price.innerText;
    			const totalPriceValue = qtyValue * priceValue;
    			const cartLink = document.getElementById('cartLink');
    			
    			const baseUrl = "/farmstory/market/cart/cart.do?prodId=${dto.prodId}"
    			
        		
        		
        		qty.addEventListener('input', function(e){
        			const qtyValue = qty.value;
        			const priceValue = price.innerText;
        			const totalPriceValue = qtyValue * priceValue;
        			console.log(qtyValue);
        			
        			totalPrice.innerText = totalPriceValue + '원';
        			cartLink.href = baseUrl + "&prodQty=" + qtyValue;
        		});
        		
        	});	//DOMContendLoaded End
        
        
        </script>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/market/product-view/product-view.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <header>
                <!-- 로고 -->
                <a href="/farmstory/main/main.do" class="logo"><img src="../../images/logo.png" alt="메인로고"></a>
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
            <main >
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
                        <h3>기본정보</h3>
                        <!-- 상품정보 -->
                        <div class="item_information">
                            <img src="/farmstory/images/market_item_thumb.jpg">
                            <table>
                                <tr>
                                    <td>상품명</td>
                                    <td>${dto.prodName}</td>
                                </tr>
                                <tr>
                                    <td>상품코드</td>
                                    <td>${dto.prodId}<p>${dto.prodId}<p></td>
                                </tr>
                                <tr>
                                    <td>배송비</td>
                                    <td>${dto.prodDeliveryCost}원<span> 3만원 이상 무료배송</span></td>
                                </tr>
                                <tr>
                                    <td>판매가격</td>
                                    <td ><span id="prodPrice">${dto.prodPrice}</span>원</td>
                                </tr>
                                <tr>
                                    <td>구매수량</td>
                                    <td><input type="number" id="prodQty" value="1" min="1"></td>
                                </tr>
                                <tr>
                                    <td>합계</td>
                                    <td id="totalPrice"></td>
                                </tr>
                            </table>
                            <a href="#">바로구매</a>
                            <a href="/farmstory/market/cart/cart.do?prodId=${dto.prodId}&prodQty=1" id="cartLink">장바구니</a>
                        </div>
                        <h3>상품설명</h3>
                        <img src="/farmstory/images/market_detail_sample.jpg">
                        <h3>배송정보</h3>
                        <p>입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.</p>
                        <h3>교환/반품</h3>
                        <table>
                            <tr>
                                <td>교환 반품이 가능한 경우</td>
                                <td>
                                    <ul>
                                        <li>팜스토리 상품에 하자가 있거나 불량인 경우</li>
                                        <li>채소, 과일, 양곡등의 식품은 만1일 이내</li>
                                        <li>기타 상품은 수령일로부터 영업일 기준 일주일 이내</li>
                                        <li>받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>교환 반품이 불가능한 경우</td>
                                <td>
                                    <ul>
                                        <li>신선 식품의 경우 단순히 마음에 들지 않는 경우</li>
                                        <li>단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우</li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
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