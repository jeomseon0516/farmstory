<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>farmstory::intro::greeting</title>
    </head>
    <link rel="stylesheet" href="/farmstory/view/css/greeting.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>

            <!-- 서브 탑 타이틀 -->
            <section>
                <img src="">
            </section>

            <!-- 메인 -->
            <main>

                <!-- 메인 사이드 -->
                <aside>
                    <img src="">
                    <ul>
                        <li><a href="#"><img src="/farmstory/images/sub_cate1_lnb1_ov.png"></a></li>
                        <li><a href="#"><img src="/farmstory/images/sub_cate1_lnb2.png"></a></li>
                    </ul>
                </aside>

                <!-- 본문 -->
                <article>
                    <div>
                        <img src="/farmstory/images/sub_nav_tit_cate1_tit1.png">
                        <div>
                            <div><span>HOME > 팜스토리소개 > <span>인사말</span></span></div>
                        </div>
                    </div>
                    <img src="/farmstory/images/sub_page1_article_txt.png">
                    <p>
                        항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며<br>
                        가정에 건강과 행복이 가득하시길 기원합니다.
                    </p>
                    <p>
                        팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.<br>
                        보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을 다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제<br>
                        공에 앞장서겠습니다.
                    </p>
                    <p>
                        친환경 농장
                    </p>
                    <p>
                        팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 제배단지입니다.
                    </p>
                    <p>
                        친환경 캠페인
                    </p>
                    <p>
                        팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을 위해 노력합니다.
                    </p>
                </article>


            </main>


            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>