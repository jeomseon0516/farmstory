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
        		
        		// 포인트 입력창 및 사용 버튼 타겟팅
        		const pointInput = document.getElementById('pointInput');
				const btnUsePoint = document.getElementById('btnUsePoint');
        		
        		// 합계 표시 엘리먼트들 타겟팅
        		const prodCountEl = document.getElementById('prodCount');
        		const totalProdPriceEl = document.getElementById('totalProdPrice');
        		const totalProdDiscountEl = document.getElementById('totalProdDiscount');
        		const totalUsedPointEl = document.getElementById('totalUsedPoint');
        		const totalProdDeliveryFeeEl = document.getElementById('totalProdDeliveryFee');
        		const totalGetPointEl = document.getElementById('totalGetPoint');
        		const totalOrderPriceEl = document.getElementById('totalOrderPrice');
        		
        		// 서버 전송용 hidden input 엘리먼트들 타겟팅
        		const hiddenTotalProdPrice = document.getElementById('hiddenTotalProdPrice');
        		const hiddenProdCount = document.getElementById('hiddenProdCount');
        		const hiddenTotalProdDeliveryFee = document.getElementById('hiddenTotalProdDeliveryFee');
        		const hiddenTotalUsedPoint = document.getElementById('hiddenTotalUsedPoint');
        		const hiddenTotalOrderPrice = document.getElementById('hiddenTotalOrderPrice');
        		
        		// 천단위 콤마 생성 함수
        		function formatNumber(num) {
        			return num.toLocaleString();
        		}
        		
        		// 최종결제정보 계산
        		let prodCount = 0;
        		let totalProdPrice = 0;
        		let totalProdDiscount = 0;
        		let totalUsedPoint = 0;
        		let totalProdDeliveryFee = 0;
        		let totalGetPoint = 0;
        		let totalOrderPrice = 0;
        		
        		// 초기 로드 시 상품 데이터를 루프 돌며 기본 금액 합산하는 함수
        		function calculateBaseSummary() {
        			const orderRows = document.querySelectorAll('.order-row');
        			
        			prodCount = orderRows.length; // 총 상품 종류 수
        			totalProdPrice = 0;
        			totalProdDiscount = 0;
        			totalGetPoint = 0;
        			totalProdDeliveryFee = 0;
        			
        			orderRows.forEach(row => {
        				const qty = parseInt(row.dataset.qty) || 0;
        				const price = parseInt(row.dataset.price) || 0;
        				const discountRate = parseInt(row.dataset.discount) || 0;
        				const point = parseInt(row.dataset.point) || 0;
        				const delivery = parseInt(row.dataset.delivery) || 0;
        				
        				const rowOriginalPrice = price * qty;
        				const rowDiscountPrice = Math.floor(rowOriginalPrice * (discountRate / 100));
        				
        				totalProdPrice += rowOriginalPrice; // 상품 총 금액 누적
        				totalProdDiscount += rowDiscountPrice; // 상품 총 할인 금액 누적
        				totalGetPoint += (point * qty); // 구매 적립 총 포인트 누적
        				totalProdDeliveryFee += delivery; // 총 배송비 누적
        			});
        			
        			// 포인트 사용 이전의 최종 결제금액 계산 화면 업데이트
        			updateDisplay();
        		}
        		
        		// 누적된 데이터를 화면에 바인딩하고 최종 금액을 도출하는 함수
        		function updateDisplay() {
        			// 최종 결제 금액 = (상품금액 - 할인금액 - 사용포인트) + 배송비
        			totalOrderPrice = (totalProdPrice - totalProdDiscount - totalUsedPoint) + totalProdDeliveryFee;
        			
        			if(totalOrderPrice < 0) totalOrderPrice = 0; // 마이너스 결제 방지
        			
        			// DOM에 값 주입
        			prodCountEl.innerText = formatNumber(prodCount) + '건';
        			totalProdPriceEl.innerText = formatNumber(totalProdPrice) + '원';
        			totalProdDiscountEl.innerText = formatNumber(totalProdDiscount) + '원';
        			totalUsedPointEl.innerText = formatNumber(totalUsedPoint) + 'P';
        			totalProdDeliveryFeeEl.innerText = formatNumber(totalProdDeliveryFee) + '원';
        			totalGetPointEl.innerText = formatNumber(totalGetPoint) + 'P'; // 적립 포인트
        			totalOrderPriceEl.innerText = formatNumber(totalOrderPrice) + '원';
        			
        			// 서버 전송용 hidden input에 순수 숫자 데이터 실시간 갱신 주입
        			if(hiddenTotalProdPrice) hiddenTotalProdPrice.value = totalProdPrice;
        			if(hiddenProdCount) hiddenProdCount.value = prodCount;
        			if(hiddenTotalProdDeliveryFee) hiddenTotalProdDeliveryFee.value = totalProdDeliveryFee;
        			if(hiddenTotalUsedPoint) hiddenTotalUsedPoint.value = totalUsedPoint;
        			if(hiddenTotalOrderPrice) hiddenTotalOrderPrice.value = totalOrderPrice;
        			
        			
        		}
        		
        		/*  추후 구현 예정
        		// 포인트 사용하기 버튼 이벤트 연결
        		if(btnUsePoint) {
        			btnUsePoint.addEventListener('click', function(e) {
        				e.preventDefault(); // submit 방지
        				
        				let inputPoint = parseInt(pointInput.value) || 0;
        				
        				if(inputPoint < 0) {
        					alert('올바른 포인트를 입력해주세요.');
        					pointInput.value = 0;
        					return;
        				}
        				
        				// 보유 포인트 검사
        				if(inputPoint > availablePoint) {
        					alert('보유하신 포인트를 초과하여 사용할 수 없습니다.');
        					inputPoint = availablePoint;
        					pointInput.value = availablePoint;
        				}
        				
        				// 상품금액 - 할인금액 한도를 넘어서 포인트를 쓸 수 없도록 방지
        				const maxUsablePoint = totalProdPrice - totalProdDiscount;
        				if(inputPoint > maxUsablePoint) {
        					alert('주문 금액을 초과하여 포인트를 사용할 수 없습니다.');
        					inputPoint = maxUsablePoint;
        					pointInput.value = maxUsablePoint;
        				}
        				
        				totalUsedPoint = inputPoint; // 사용 포인트 변수 갱신
        				updateDisplay(); // 화면 재계산
        			});
        		}
        		*/
        		// [호출 실행] 스크립트 로드 완료 후 함수 최초 실행
        		calculateBaseSummary();
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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>
            <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
            <main>
                <%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
                <article class="main-content">
                    <%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>
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
	                            <tr class="order-row"
	                            		data-qty="${dto.prodQty}"
	                            		data-price="${dto.prodPrice}"
	                            		data-discount="${dto.prodDiscount}"
	                            		data-point="${dto.prodPoint}"
	                            		data-delivery="${dto.prodDeliveryCost}">
	                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
	                                <td>${dto.prodType}</td>
	                                <td>${dto.prodName}</td>
	                                <td>${dto.prodQty}</td>
	                                <td>${dto.prodDiscount}%</td>
	                                <td>${dto.prodPoint}P</td>
	                                <td>${dto.prodPrice}원</td>
	                                <td><span>${dto.prodTotalPrice}</span>원
	                                	<input type="hidden" name="orderProdId" value="${dto.prodId}">
	                                	<input type="hidden" name="orderProdPrice" value="${dto.prodPrice}">
	                                	<input type="hidden" name="orderProdDiscount" value="${dto.prodDiscount}">
	                                	<input type="hidden" name="orderProdQty" value="${dto.prodQty}">
	                                </td>
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
	                                    <input type="number" id="pointInput" name="userPoint" value="0">
	                                    <button id="btnUserPoint">사용하기</button><br>
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
	                                    <td>
	                                    	<span id="prodCount">0</span>
	                                    	<input type="hidden" id="hiddenProdCount" name="prodCount" value="0">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td>상품금액</td>
	                                    <td>
	                                    	<span id="totalProdPrice">0원</span>
	                                    	<input type="hidden" id="hiddenTotalProdPrice" name="totalProdPrice" value="0">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td>할인금액</td>
	                                    <td id="totalProdDiscount">0원</td>
	                                </tr>
	                                 <tr>
	                                	<td>포인트사용</td>
	                                	<td>
	                                		<span id="totalUsedPoint">0P</span>
	                                		<input type="hidden" id="hiddenTotalUsedPoint" name="totalUsedPoint" value="0">
	                                	</td>
	                                </tr>
	                                <tr>
	                                    <td>배송비</td>
	                                    <td>
	                                    	<span id="totalProdDeliveryFee">0원</span>
	                                    	<input type="hidden" id="hiddenTotalProdDeliveryFee" name="totalProdDeliveryFee" value="0">
	                                    </td>
	                                </tr>
	                               
	                                <tr>
	                                    <td>포인트적립</td>
	                                    <td id="totalGetPoint">0P</td>
	                                </tr>
	                                <tr>
	                                    <td>전체주문금액</td>
	                                    <td>
	                                    	<span id="totalOrderPrice">0원</span>
	                                    	<input type="hidden" id="hiddenTotalOrderPrice" name="totalOrderPrice" value="0">
	                                    </td>
	                                </tr>
	
	                            </table>
	                            <button type="submit" id="btnSubmitOrder">주문하기</button>
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