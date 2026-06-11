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
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


        </div>
    </body>
</html>