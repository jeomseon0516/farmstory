<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::mypage::cart</title>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/mypage/cart/cart.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            <!-- 서브 배너 -->
            <section class="sub-banner">
                <img src="/farmstory/images/myinfo/myinfo_top_tit.png">
            </section>

            <!-- 메인 -->
            <main>
                <!-- 서브 사이드 바 -->
                <aside class="sub-sidebar-aside">
                    <img src="/farmstory/images/myinfo/myinfo_menu_tit.png">
                    <ul>
                        <li><a href="/farmstory/mypage/cart.do"><img src="/farmstory/images/myinfo/myinfo_menu1_ov.png"></a></li>
                        <li><a href="/farmstory/mypage/order-list.do"><img src="/farmstory/images/myinfo/myinfo_menu2.png"></a></li>
                        <li><a href="/farmstory/mypage/profile-edit.do"><img src="/farmstory/images/myinfo/myinfo_menu3.png"></a></li>
                    </ul>
                </aside>

                <!-- 메인 내용 -->
                <article class="main-content">
                    <!-- 메인 컨텐츠 헤더 -->
                    <div class="main-content-header">
                        <img src="/farmstory/images/myinfo/myinfo_nav_tit1.png">

                        <!-- 서브 내비게이션 타이틀 -->
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 나의정보 </span>
                                <span class="sub_nav_select">> 장바구니</span>
                            </nav>

                        </section>

                    </div>

                    <!-- 내용 -->
                    <section>
                        <a href="#">장바구니 전체(10)</a>
                        <table>
                            <tr>
                                <th><input type="checkbox"></th>
                                <th>이미지</th>
                                <th>종류</th>
                                <th>상품명</th>
                                <th>수량</th>
                                <th>할인</th>
                                <th>포인트</th>
                                <th>가격</th>
                                <th>소계</th>
                            </tr>
                            <tr>
                                <td colspan="9">장바구니에 상품이 없습니다.</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
                                <td>과일</td>
                                <td>사과 500g</td>
                                <td>1</td>
                                <td>10%</td>
                                <td>40P</td>
                                <td>4,000</td>
                                <td><span>3,600</span>원</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
                                <td>과일</td>
                                <td>사과 500g</td>
                                <td>1</td>
                                <td>10%</td>
                                <td>40P</td>
                                <td>4,000</td>
                                <td><span>3,600</span>원</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td><img src="/farmstory/images/market_item1.jpg" width="60px" height="60px"></td>
                                <td>과일</td>
                                <td>사과 500g</td>
                                <td>1</td>
                                <td>10%</td>
                                <td>40P</td>
                                <td>4,000</td>
                                <td><span>3,600</span>원</td>
                            </tr>
                        </table>
                        <div>선택삭제</div>
                        <div>
                            <table>
                                <tr>
                                    <th colspan="2">전체합계</th>
                                </tr>
                                <tr>
                                    <td>상품수</td>
                                    <td>1</td>
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

                    </section>

                </article>

            </main>

            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


        </div>
    </body>
</html> 