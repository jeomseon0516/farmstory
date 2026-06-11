<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::mypage::order-list</title>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/mypage/order-list.css">
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
                        <li><a href="/farmstory/mypage/cart.do"><img src="/farmstory/images/myinfo/myinfo_menu1.png"></a></li>
                        <li><a href="/farmstory/mypage/order-list/order-list.do"><img src="/farmstory/images/myinfo/myinfo_menu2_ov.png"></a></li>
                        <li><a href="/farmstory/mypage/profile-edit/profile-edit.do"><img src="/farmstory/images/myinfo/myinfo_menu3.png"></a></li>
                    </ul>
                </aside>

                <!-- 메인 내용 -->
                <article class="main-content">
                    <!-- 메인 컨텐츠 헤더 -->
                    <div class="main-content-header">
                        <img src="/farmstory/images/myinfo/myinfo_nav_tit2.png">

                        <!-- 서브 내비게이션 타이틀 -->
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 나의정보 </span>
                                <span class="sub_nav_select">> 주문내역</span>
                            </nav>

                        </section>

                    </div>

                    <!-- 내용 -->
                    <section>
                        
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
                                <td colspan="9">상품 구매 내역이 없습니다.</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td><img src="../../images/market_item1.jpg" width="60px" height="60px"></td>
                                <td>과일</td>
                                <td>사과 500g</td>
                                <td>1</td>
                                <td>10%</td>
                                <td>40P</td>
                                <td>4,000</td>
                                <td><span>3,600</span>원</td>
                            </tr>
                            
                        </table>

                        <div class="pagination">
                            <a href="#" class="button-edge">이전</a>
                            <a href="#" class="button-number selected">1</a>
                            <a href="#" class="button-number">2</a>
                            <a href="#" class="button-number">3</a>
                            <a href="#" class="button-edge">다음</a>
                        </div>

                    </section>

                </article>

            </main>

            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


        </div>
    </body>
</html> 