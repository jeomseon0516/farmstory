<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>
            <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
            <main>
                <%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
                <article class="main-content">
                    <%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>

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