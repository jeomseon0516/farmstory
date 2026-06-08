<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::market/market-cart</title>
    </head>
    <link rel="stylesheet" href="../../global-style/reset.css">
    <link rel="stylesheet" href="../../global-style/global-header.css">
    <link rel="stylesheet" href="../../global-style/global-main-style.css">
    <link rel="stylesheet" href="../../global-style/global-footer.css">
    <link rel="stylesheet" href="./cart.css">
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

            <!-- 서브 배너 -->
            <section class="sub-banner">
                <img src="../../images/sub_top_tit2.png">
            </section>

            <!-- 메인 -->
            <main>
                <!-- 서브 사이드 바 -->
                <aside class="sub-sidebar-aside">
                    <img src="../../images/sub_aside_cate2_tit.png">
                    <ul>
                        <li><a href="../product-list/product-list.html"><img src="../../images/sub_cate2_lnb1_ov.png"></a></li>
                    </ul>
                </aside>

                <!-- 메인 내용 -->
                <article class="main-content">
                    <!-- 메인 컨텐츠 헤더 -->
                    <div class="main-content-header">
                        <img src="../../images/sub_nav_tit_cate2_tit1.png">

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
                                <td><img src="../../images/market_item1.jpg" width="60px" height="60px"></td>
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
                                <td><img src="../../images/market_item1.jpg" width="60px" height="60px"></td>
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