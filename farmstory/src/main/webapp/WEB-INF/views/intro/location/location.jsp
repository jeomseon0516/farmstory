<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::intro::location</title>
    </head>
    <link rel="stylesheet" href="./location.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            <!-- 서브 탑 타이틀 -->
            <section>
                <img src="/farmstory/image/sub_top_tit1.png">
            </section>

            <!-- 메인 -->
            <main>

                <!-- 메인 사이드 -->
                <aside>
                    <img src="/farmstory/image/sub_aside_cate1_tit.png">
                    <ul>
                        <li><a href="#"><img src="/farmstory/image/sub_cate1_lnb1.png"></a></li>
                        <li><a href="#"><img src="/farmstory/image/sub_cate1_lnb2_ov.png"></a></li>
                    </ul>
                </aside>

                <!-- 본문 -->
                <article>
                    <div>
                        <img src="/farmstory/image/sub_nav_tit_cate1_tit2.png">
                        <div>
                            <div><span>HOME > 팜스토리소개 > <span>찾아오시는길</span></span></div>
                        </div>
                    </div>
                    <p>
                        팜스토리
                    </p>
                    <p>
                        주소: 경기도 이천시 잘한다구 신난다동 123<br>
                        전화: 01-234-5678
                    </p>
                    <p>
                        찾아오시는길
                    </p>

                </article>
            </main>

            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>