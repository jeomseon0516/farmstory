<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>farmstory::intro::greeting</title>

    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/intro/greeting/greeting.css">
</head>

<body>
    <div id="container">

        <%@ include file="/WEB-INF/views/global/_header.jsp" %>
        <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>

        <main>

            <aside class="sub-sidebar-aside">
                <img src="/farmstory/images/sub_aside_cate1_tit.png" alt="팜스토리소개">

                <ul>
                    <li>
                        <a href="/farmstory/intro/greeting/greeting.do?menu=Introduction&category=GREETING">
                            <img src="/farmstory/images/sub_cate1_lnb1_ov.png" alt="인사말">
                        </a>
                    </li>
                    <li>
                        <a href="/farmstory/intro/location/location.do?menu=Introduction&category=LOCATION">
                            <img src="/farmstory/images/sub_cate1_lnb2.png" alt="찾아오시는길">
                        </a>
                    </li>
                </ul>
            </aside>

            <article class="main-content">

                <div class="main-content-header">
                    <img src="/farmstory/images/sub_nav_tit_cate1_tit1.png" alt="인사말">

                    <div class="sub_nav_tit">
                        <nav>
                            <span>HOME</span>
                            <span>&gt;</span>
                            <span>팜스토리소개</span>
                            <span>&gt;</span>
                            <span class="sub_nav_select">인사말</span>
                        </nav>
                    </div>
                </div>

                <section>
                    <img src="/farmstory/images/sub_page1_article_txt.png" alt="건강한 먹거리를 위해 노력합니다.">

                    <p>
                        항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며<br>
                        가정에 건강과 행복이 가득하시길 기원합니다.
                    </p>

                    <p>
                        팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.<br>
                        보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을 다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제<br>
                        공에 앞장서겠습니다.
                    </p>

                    <p class="green-title">친환경 농장</p>

                    <p>
                        팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 재배단지입니다.
                    </p>

                    <p class="green-title">친환경 캠페인</p>

                    <p>
                        팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을 위해 노력합니다.
                    </p>
                </section>

            </article>

        </main>

        <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

    </div>
</body>
</html>