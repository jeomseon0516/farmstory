<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::market::product-list</title>
    </head>
    <link rel="stylesheet" href="./product-list.css">
    <body>
        <div id="container">
            <!-- 헤더 -->
            <header>
                <!-- 로고 -->
                <a href="#" class="logo"><img src="../../images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="#">HOME</a>
                    <a href="#">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">관리자</a>
                    <a href="#">고객센터</a>
                </p>

                <!-- 오른쪽 테스트 배너 -->
                <img class="text" src="../../images/head_txt_img.png" alt="3만원이상 무료배송">
                
                <!-- 메인 메뉴(GNB) -->
                <ul class="gnb">
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="#">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </header>

            <!-- 서브 탑 타이틀 -->
            <section>
                <img src="../../images/sub_top_tit1.png">
            </section>

             <!-- 메인 -->
            <main>

                <!-- 메인 사이드 -->
                <aside>
                    <img src="../../images/sub_aside_cate1_tit.png">
                    <ul>
                        <li><a href="#"><img src="../../images/sub_cate2_lnb1_ov.png"></a></li>
                    </ul>
                </aside>

                <!-- 본문 -->
                <article>
                    <!-- 본문-타이틀 -->
                    <div>
                        <img src="../../images/sub_nav_tit_cate2_tit1.png">
                        <div>
                            <div><span>HOME > 장보기 > <span>장보기</span></span></div>
                        </div>
                    </div>
                    <a href="#"><p>전체(10) | 과일 | 야채 | 곡류</p></a>
                    <table>
                        <tr>
                            <th>이미지</th>
                            <th>종류</th>
                            <th>상품명</th>
                            <th>할인</th>
                            <th>포인트</th>
                            <th>판매가격</th>
                        </tr>
                        <tr class="table_content">
                            <td><a href="#"><img src="../../images/market_item1.jpg"></a></td>
                            <td><a href="#">과일</a></td>
                            <td><a href="#">사과 500g</a></td>
                            <td>10%</td>
                            <td>400p</td>
                            <td><p>3,600원</p><p>4,000원</p></td>
                        </tr>
                        <tr class="table_content">
                            <td><a href="#"><img src="../../images/market_item2.jpg"></a></td>
                            <td><a href="#">과일</a></td>
                            <td><a href="#">전남 완주 배 5kg</a></td>
                            <td>10%</td>
                            <td>400p</td>
                            <td><p>3,600원</p><p>4,000원</p></td>
                        </tr>
                        <tr class="table_content">
                            <td><a href="#"><img src="../../images/market_item3.jpg"></a></td>
                            <td><a href="#">과일</a></td>
                            <td><a href="#">방울 토마토</a></td>
                            <td>10%</td>
                            <td>400p</td>
                            <td><p>3,600원</p><p>4,000원</p></td>
                        </tr>
                        <tr class="table_content">
                            <td><a href="#"><img src="../../images/market_item6.jpg"></a></td>
                            <td><a href="#">과일</a></td>
                            <td><a href="#">무농약 현미</a></td>
                            <td>10%</td>
                            <td>400p</td>
                            <td><p>3,600원</p><p>4,000원</p></td>
                        </tr>
                        <tr class="table_content">
                            <td><a href="#"><img src="../../images/market_item7.jpg"></a></td>
                            <td><a href="#">과일</a></td>
                            <td><a href="#">팜스토리 하루야채 샐러드</a></td>
                            <td>10%</td>
                            <td>400p</td>
                            <td><p>3,600원</p><p>4,000원</p></td>
                        </tr>
                    </table>
                    <a href="#"> &lt; [1] [2] [3] [4] [5] &gt;</a>
                </article>
            </main>

            <!-- 푸터 -->
            <footer>
                <img src="../../images/footer_logo.png">
                <div>
                    <p>(주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br>
                        등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                        대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                    </p>
                    <p>
                        copyrightⓒ 김철학(개발에반하다) All rights reserved.
                    </p>
                    <p>farmstory ver1.0.1</p>
                </div>
            </footer>
        </div>
    </body>
</html>