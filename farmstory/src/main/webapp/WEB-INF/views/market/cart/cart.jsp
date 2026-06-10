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
        		const form = document.getElementById('cartForm');
        		const selectAll = document.getElementById('selectAll');
        		
        		// 합계 표시 엘리먼트들 타겟팅
        	    const totalQtyEl = document.getElementById('totalQty');
        	    const totalOriginalPriceEl = document.getElementById('totalOriginalPrice');
        	    const totalDiscountPriceEl = document.getElementById('totalDiscountPrice');
        	    const totalDeliveryFeeEl = document.getElementById('totalDeliveryFee');
        	    const totalPointEl = document.getElementById('totalPoint');
        	    const totalOrderPriceEl = document.getElementById('totalOrderPrice');

        		
        		// 전체 선택 / 해제 기능
        		if(selectAll) {
        			selectAll.addEventListener('change', function() {
        				const checkboxex = document.querySelectorAll('input[name="selectedItems"]');
        				checkboxex.forEach(cb => cb.checked = selectAll.checked);
        			});
        			
        		}
        		
        		/*
        			시간 나면 구현 예정
	        		// [선택삭제] 버튼 클릭 시 동장
	        		btnDelete.addEventListener('click', function() {
	        			const checkedBoxed = document.querySelectorAll('input[name="selectedItems"]:checked');
	        			
	        			if(checkedBoxes.length === 0) {
	        				alert('삭제할 상품을 선택해주세요.');
	        				return;
	        			}
	        			
	        			if(confirm('선택한 상품을 장바구니에서 삭제하시겠습니까?')) {
	        				form.action = "/farmstory/market/cart/delete.do";
	        				form.submit();
	        			}
	        		})
	        	*/
        		
        		// [주문하기] 전송 시 유효성 검사
        		form.addEventListener('submit', function(e) {
        			const checkedBoxes = document.querySelectorAll('input[name="selectedItems"]:checked');
        		
        			if (checkedBoxes.length ===0) {
        				e.preventDefault();
        				alert('주문할 상품을 선택해주세요.');
        			}
        				
        		});
        		

        		
        	}); 	//DOMContentLoaded End
        
        </script>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/market/cart/cart.css">
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
                        <form id="cartFoam" action="#" method="post">
	                        <table id="cartTable">
	                            <tr>
	                                <th><input type="checkbox" id="selectAll"></th>
	                                <th>이미지</th>
	                                <th>종류</th>
	                                <th>상품명</th>
	                                <th>수량</th>
	                                <th>할인</th>
	                                <th>포인트</th>
	                                <th>가격</th>
	                                <th>소계</th>
	                            </tr>
	                            <c:if test="${cartDtoList == null}">
		                            <tr>
		                                <td colspan="9">장바구니에 상품이 없습니다.</td>
		                            </tr>
		                        </c:if>
		                        <c:if test="${cartDtoList != null}">
		                        	<c:forEach var="dto" items="${cartDtoList}">
			                            <tr class="cart-row">
			                                <td><input type="checkbox" name="selectedItems" value="${dto.cartId}" class="cart-checkbox"></td>
			                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
			                                <td>${dto.prodType}</td>
			                                <td>${dto.prodName}</td>
			                                <td class="row-qty" data-qty="${dto.prodQty}">${dto.prodQty}</td>
			                                <td class="row-discount" data-discount-rate="${dto.prodDiscount}"><span id="discount">${dto.prodDiscount}</span>%</td>
			                                <td class="row-point" data-point="${dto.prodPoint}">${dto.prodPoint}P</td>
			                                <td class="row-price" data-price="${dto.prodPrice}">${dto.prodPrice}</td>
			                                <td class="row-total" data-total="${dto.prodTotalPrice}"><span id="eachTotalPrice">${dto.prodTotalPrice}</span>원</td>
			                            </tr>
			                    	</c:forEach>
		                        </c:if>
	                        </table>
	                        <div style="cursor:pointer;" id="btnDelete">선택삭제</div> <!-- 시간 나면 구현 예정 -->
	                        <div>
	                            <table>
	                                <tr>
	                                    <th colspan="2">전체합계</th>
	                                </tr>
	                                <tr>
	                                    <td>상품수</td>
	                                    <td id="totalQty">0</td>
	                                </tr>
	                                <tr>
	                                    <td>상품금액</td>
	                                    <td id="totalOriginalPrice">0원</td>
	                                </tr>
	                                <tr>
	                                    <td>할인금액</td>
	                                    <td id="totalDiscountPrice">0원</td>
	                                </tr>
	                                <tr>
	                                    <td>배송비</td>
	                                    <td id="totalDeliveryFee">0원</td>
	                                </tr>
	                                <tr>
	                                    <td>포인트</td>
	                                    <td id="totalPoint">0원</td>
	                                </tr>
	                                <tr>
	                                    <td>전체주문금액</td>
	                                    <td id="totalOrderPrice">0원</td>
	                                </tr>
	
	                            </table>
	                            <button type="submit" id="btnOrder">주문하기</button>
	                            
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