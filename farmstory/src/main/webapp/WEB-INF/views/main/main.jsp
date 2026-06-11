<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>${pageTitle}::main</title>
        
        <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
	    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
	    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
	    <link rel="stylesheet" href="/farmstory/css/main/style.css">
    </head>
    <body>
        <div id="container">
            <header>
                <!-- 로고 -->
                <a href="/farmstory/main/main.do" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="/farmstory/main/main.do">HOME</a>
                    |
                    <a href="/farmstory/user/login.do">로그인</a>
                    |
                    <a href="/farmstory/user/terms.do">회원가입</a>
                    |
                    <a href="/farmstory/admin/product-register/product-register.do">관리자</a>
                    |
                    <a href="#">고객센터</a>
                </p>
                <!-- 오른쪽 테스트 배너 -->
                <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">
                <!-- 메인 메뉴(GNB) -->
                <ul class="gnb">
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="/farmstory/market/product-list/product-list.do">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </header>
            <main>
                <!-- 슬라이더 -->
                <div class="slider">
                    <div>
                        <img src="/farmstory/images/main_banner_txt.png">
                        <img src="/farmstory/images/main_banner_tit.png">
                        <img src="/farmstory/images/main_banner_img.png">
                    </div>
                    <img src="/farmstory/images/main_slide_img_tit.png">
                </div>
                <!-- 장보기 -->
                <img class="market_tit" src="/farmstory/images/main_market_tit.png">
                <div class="market">
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item1.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p>
                            <del>4000</del><span>&nbsp;</span><span>10% ↓</span>
                        </p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item2.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p><del>4000</del><span>&nbsp;</span><span>10% ↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item3.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p><del>4000</del><span>&nbsp;</span><span>10% ↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item4.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p><del>4000</del><span>&nbsp;</span><span>10% ↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item5.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p><del>4000</del><span>&nbsp;</span><span>10% ↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/market_item6.jpg"></a>
                        <h1>과일</h1>
                        <h2>사과 500g</h2>
                        <p><del>4000</del><span>&nbsp;</span><span>10% ↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                </div>
                <div class="quick">
                    <a href="#"><img src="/farmstory/images/main_banner_sub1_tit.png" alt="오늘의 식단"></a>
                    <a href="#"><img src="/farmstory/images/main_banner_sub2_tit.png" alt="나도 요리사"></a>
                </div>
                <div class="latest">
                    <article>
                        <a href="#"><img src="/farmstory/images/main_latest1_tit.png" alt="텃밭가꾸기"></a>
                        <img src="/farmstory/images/main_latest1_img.jpg" alt="텃밭가꾸기">
                        <table border="0">
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                        </table>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/main_latest2_tit.png" alt="귀농할게요"></a>
                        <img src="/farmstory/images/main_latest2_img.jpg" alt="귀농할게요">
                        <table border="0">
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                        </table>
                    </article>
                    <article>
                        <a href="#"><img src="/farmstory/images/main_latest3_tit.png" alt="텃밭가꾸기"></a>
                        <img src="/farmstory/images/main_latest3_img.jpg" alt="텃밭가꾸기">
                        <table border="0">
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>></td>
                                <td>토마토! 건강하게 길러서 맛있게 드세요.</td>
                                <td>26-11-05</td>
                            </tr>
                        </table>
                    </article>
                </div>
                <div class="info">
                    <article>
                        <img src="/farmstory/images/main_sub2_cs_tit.png">
                        <div>
                            <img src="/farmstory/images/main_sub2_cs_img.png">
                            <img src="/farmstory/images/main_sub2_cs_txt.png">
                            <p>
                                평일: AM 09:00 ~ PM 06:00<br>
                                점심: PM 12:00 ~ PM 01:00<br>
                                토, 일요일, 공휴일 휴무
                            </p>

                        </div>
                        <a href="#"><img src="/farmstory/images/main_sub2_cs_bt1.png"></a>
                        <a href="#"><img src="/farmstory/images/main_sub2_cs_bt2.png"></a>
                        <a href="#"><img src="/farmstory/images/main_sub2_cs_bt3.png"></a>

                        <div>
                            <img src="/farmstory/images/main_sub2_account_tit.png">
                            <p>
                                기업은행 123-456789-01-01-012<br>
                                국민은행 01-1234-56789<br>
                                우리은행 123-456789-01-01-012<br>
                                하나은행 123-456789-01-01<br>
                                예 금 주 (주)팜스토리
                            </p>
                        </div>

                        <img src="/farmstory/images/main_sub2_notice_tit.png">
                        <table border="0">
                            <tr>
                                <td>·</td>
                                <td><a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 진행중입니다.</a></td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>·</td>
                                <td><a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 진행중입니다.</a></td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>·</td>
                                <td><a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 진행중입니다.</a></td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>·</td>
                                <td><a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 진행중입니다.</a></td>
                                <td>26-11-05</td>
                            </tr>
                            <tr>
                                <td>·</td>
                                <td><a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 진행중입니다.</a></td>
                                <td>26-11-05</td>
                            </tr>
                        </table>

                    </article>
                </div>
            </main>
            <footer>
                <img src="/farmstory/images/footer_logo.png">
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