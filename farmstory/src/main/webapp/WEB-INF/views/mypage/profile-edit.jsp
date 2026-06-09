<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::mypage/profile-edit</title>
        <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
        <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
        <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
        <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
        <link rel="stylesheet" href="/farmstory/css/mypage/profile-edit.css">
    </head>
    <body>
        <div id="container">
            <!-- 헤더 -->
            <header>
                <!-- 로고 -->
                <a href="#" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="#">HOME</a>
                    <a href="#">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">관리자</a>
                    <a href="#">고객센터</a>
                </p>

                <!-- 오른쪽 테스트 배너 -->
                <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">
                
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
                <img src="/farmstory/images/myinfo/myinfo_top_tit.png">
            </section>

            <!-- 메인 -->
            <main>
                <!-- 서브 사이드 바 -->
                <aside class="sub-sidebar-aside">
                    <img src="/farmstory/images/myinfo/myinfo_menu_tit.png">
                    <ul>
                        <li><a href="/farmstory/mypage/cart/cart.do"><img src="/farmstory/images/myinfo/myinfo_menu1.png"></a></li>
                        <li><a href="/farmstory/mypage/order-list/order-list.do"><img src="/farmstory/images/myinfo/myinfo_menu2.png"></a></li>
                        <li><a href="/farmstory/mypage/profile-edit.do"><img src="/farmstory/images/myinfo/myinfo_menu3_ov.png"></a></li>
                    </ul>
                </aside>

                <!-- 메인 내용 -->
                <article class="main-content">
                    <!-- 메인 컨텐츠 헤더 -->
                    <div class="main-content-header">
                        <img src="/farmstory/images/myinfo/myinfo_nav_tit3.png">

                        <!-- 서브 내비게이션 타이틀 -->
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 나의정보 ></span>
                                <span class="sub_nav_select"> 정보수정</span>
                            </nav>
                        </section>
                    </div>
                    <section>
                        <form action="#">
                            <h2>회원정보 설정</h2>
                            <table class="user_modify1">
                                <tr>
                                    <td>아이디</td><td>chhak1234</td>
                                </tr>
                                <tr>
                                    <td>비밀번호</td><td><input type="text" placeholder="비밀번호 입력"></td>
                                </tr>
                                <tr>
                                    <td>비밀번호 확인</td><td><input type="text" placeholder="비밀번호 입력 확인"><button>비밀번호 수정</button></td>
                                </tr>
                                <tr>
                                    <td>회원가입날짜</td><td>2022-01-01 12:45:12</td>
                                </tr>
                            </table><br>
                            <h2>개인정보 수정</h2>
                            <table class="user_modify2">
                                <tr>
                                    <td>이름</td><td><input type="text"></td>
                                </tr>
                                <tr>
                                    <td>별명</td><td>공백없는 한글, 영문, 숫자 입력<br><input type="text" placeholder="별명 입력"><button><img src="/farmstory/images/myinfo/chk_id.gif"></button></td>
                                </tr>
                                <tr>
                                    <td>이메일</td><td><input type="text" placeholder="이메일 입력"><button><img src="/farmstory/images/myinfo/chk_auth.gif"></button></td>
                                </tr>
                                <tr>
                                    <td>휴대폰</td>
                                    <td>
                                        <input type="text" placeholder="휴대폰 입력">
                                    </td>
                                </tr>
                                <tr>
                                    <td>주소</td>
                                    <td>
                                        <input type="text" placeholder="우편번호"><button><img src="/farmstory/images/myinfo/chk_post.gif"></button><br>
                                        <input type="text" placeholder="주소 검색"><br>
                                        <input type="text" placeholder="상세주소 입력"><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>회원탈퇴</td><td><button>탈퇴하기</button></td>
                                </tr>

                            </table>
                        </form>
                    </section>
                </article>

            </main>

            <!-- 푸터 -->
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