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
        		const checkboxes = document.querySelectorAll('.cart-checkbox');

        		
        		// 합계 표시 엘리먼트들 타겟팅
        	    const totalQtyEl = document.getElementById('totalQty');
        	    const totalOriginalPriceEl = document.getElementById('totalOriginalPrice');
        	    const totalDiscountPriceEl = document.getElementById('totalDiscountPrice');
        	    const totalDeliveryFeeEl = document.getElementById('totalDeliveryFee');
        	    const totalPointEl = document.getElementById('totalPoint');
        	    const totalOrderPriceEl = document.getElementById('totalOrderPrice');

        		// 천단위 콤마 생성 함수
        		function formatNumber(num) {
        			return num.toLocaleString();
        		}
        		
        		// 실시간 합계 계산 함수
        		function updateSummary() {
        			let totalQty = 0;
        			let totalOriginalPrice = 0;
        			let totalDiscountPrice = 0;
        			let totalPoint = 0;
        			let totalOrderPrice = 0;
        			let totalDeliveryFee = 0;
        			
        			// 체크된 체크박스들만 순회
        			const checkedBoxes = document.querySelectorAll('.cart-checkbox:checked');
        			
        			checkedBoxes.forEach(checkbox => {
        				const row = checkbox.closest('tr');
        			
        				// data 속성에서 순수 숫자 데이터 추출
        				const qty = parseInt(row.querySelector('.row-qty').dataset.qty)||0;
        				const price = parseInt(row.querySelector('.row-price').dataset.price) || 0;
        				const discountRate = parseInt(row.querySelector('.row-discount').dataset.discountRate) || 0;
        				const point = parseInt(row.querySelector('.row-point').dataset.point) || 0;
        				
        				// 숨겨진 hidden input의 value에서 배송비 추출
        				const deliveryCost = parseInt(row.querySelector('.row-delivery-value').value) || 0;
        				
        				// 단일 행 계산
        				const rowOriginalPrice = price * qty;
        				const rowDiscountPrice = Math.floor(rowOriginalPrice * (discountRate / 100));
        				const rowPoint = point * qty;
        				const rowTotalPrice = rowOriginalPrice - rowDiscountPrice;
        				
        				// 합계 누적
        				totalQty += qty;
        				totalOriginalPrice += rowOriginalPrice;
        				totalDiscountPrice += rowDiscountPrice;
        				totalPoint += rowPoint;
        				totalDeliveryFee += deliveryCost;
        				totalOrderPrice += rowTotalPrice;
        			
        			});
        			
        			// 최종 주문 금액 = (상품 원가 총합 - 할인 총합) + 배송비 총합
        			totalOrderPrice += totalDeliveryFee;
        			
        			// 하단 테이블에 실시간 데이터 반영
        			totalQtyEl.innerText = formatNumber(totalQty);
        			totalOriginalPriceEl.innerText = formatNumber(totalOriginalPrice) + '원';
        			totalDiscountPriceEl.innerText = formatNumber(totalDiscountPrice) + '원';
        			totalDeliveryFeeEl.innerText = formatNumber(totalDeliveryFee) + '원';
        			totalPointEl.innerText = formatNumber(totalPoint) + 'P';
        			totalOrderPriceEl.innerText = formatNumber(totalOrderPrice) + '원';
        			
        		}
        		
        	    
        	    
        		// 전체 선택 / 해제 기능
        		if(selectAll) {
        			selectAll.addEventListener('change', function() {
        				checkboxex.forEach(cb => cb.checked = selectAll.checked);
        				updateSummary();
        			});
        			
        		}
        		
        		// 각각의 체크박스가 변할 때마다 합계 업데이트
        		checkboxes.forEach(cb => {
        			cb.addEventListener('change', updateSummary);
        		});
        		
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
        		if(form) {
        			form.addEventListener('submit', function(e) {
        				const checkedBoxes = document.querySelectorAll('input[name="selectedItems"]:checked');
        				
        				if(checkedBoxes.length === 0) {
        					e.preventDefault();
        					alert('주문할 상품을 선택해주세요.');
        				}
        			});
        		}
        		
        		// 페이지 최초 로드 시 함수 호출
        		updateSummary();

        		
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

                    <!-- 내용 -->
                    <section>
                        <a href="#">장바구니 전체(10)</a>
                        <form id="cartForm" action="/farmstory/market/checkout/checkout.do" method="post">
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
			                                <td>
			                                	<input type="checkbox" name="selectedItems" value="${dto.cartId}" class="cart-checkbox">
			                                	<input type="hidden" class="row-delivery-value" value="${dto.prodDeliveryCost}">
			                                </td>
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
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


        </div>
    </body>
</html>