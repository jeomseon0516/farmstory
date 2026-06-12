<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>farmstory::intro::location</title>

    <!-- 공통 CSS -->
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">

    <!-- 페이지 전용 CSS -->
    <link rel="stylesheet" href="/farmstory/css/intro/location/location.css">
</head>

<body>

<div id="container">

    <!-- 헤더 -->
    <%@ include file="/WEB-INF/views/global/_header.jsp" %>

    <!-- 서브 배너 -->
    <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>

    <main>

        <!-- 사이드 메뉴 -->
        <aside class="sub-sidebar-aside">

            <img src="/farmstory/images/sub_aside_cate1_tit.png" alt="팜스토리소개">

            <ul>
                <li>
                    <a href="/farmstory/intro/greeting/greeting.do?menu=Introduction&category=GREETING">
                        <img src="/farmstory/images/sub_cate1_lnb1.png" alt="인사말">
                    </a>
                </li>

                <li>
                    <a href="/farmstory/intro/location/location.do?menu=Introduction&category=LOCATION">
                        <img src="/farmstory/images/sub_cate1_lnb2_ov.png" alt="찾아오시는길">
                    </a>
                </li>
            </ul>

        </aside>

        <!-- 본문 -->
        <article class="main-content">

            <!-- 상단 제목 -->
            <div class="main-content-header">

                <img src="/farmstory/images/sub_nav_tit_cate1_tit2.png" alt="찾아오시는길">

                <div class="sub_nav_tit">
                    <nav>
                        <span>HOME</span>
                        <span>&gt;</span>
                        <span>팜스토리소개</span>
                        <span>&gt;</span>
                        <span class="sub_nav_select">찾아오시는길</span>
                    </nav>
                </div>

            </div>

            <!-- 본문 내용 -->
            <section class="location-section">

                <!-- 농장 정보 -->
                <p class="green-title">팜스토리</p>

                <p>
                    주소 : 경기도 이천시 잘한다구 신난다동 123<br>
                    전화 : 031-234-5678
                </p>

                <!-- 지도 제목 -->
                <p class="green-title">찾아오시는길</p>

                <!-- 카카오맵 출력 영역 -->
                <div id="map"></div>

            </section>

        </article>

    </main>

    <!-- 푸터 -->
    <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

</div>



<!-- 카카오맵 SDK -->
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=d66180273d1dd226b82ead5ac7ad6ad1&autoload=false"></script>

<script>

    // 카카오맵 SDK 로드 완료 후 실행
    kakao.maps.load(function() {

        // 지도 출력 영역
        const container = document.getElementById('map');

        // 지도 중심 좌표
        const options = {
            center: new kakao.maps.LatLng(35.1577, 129.0592),
            level: 3
        };

        // 지도 생성
        const map = new kakao.maps.Map(container, options);

        // 마커 위치
        const markerPosition =
            new kakao.maps.LatLng(35.1577, 129.0592);

        // 마커 생성
        const marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 지도에 마커 표시
        marker.setMap(map);

        // 정보창 생성
        const infoWindow = new kakao.maps.InfoWindow({
            content : '<div style="padding:5px;">팜스토리</div>'
        });

        // 정보창 표시
        infoWindow.open(map, marker);

    });

</script>

</body>
</html>