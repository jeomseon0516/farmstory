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
    					
   				totalPrice.innerText = totalPriceValue + '원';
    			cartLink.href = baseUrl + "&prodQty=" + qtyValue;
    			
        		
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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>
            <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
            <main>
                <%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
                <article class="main-content">
                    <%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>

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
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


        </div>
        
    </body>
</html>