<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>farmstory::login</title>
    </head>
    
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/user/login/login.css">
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
                    <a href="/farmstory/user/register.do">회원가입</a>
                    |
                    <a href="#">관리자</a>
                    |
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

    <main>
                
        <section class="login">
            <form action="#" method="post">

                <!-- 로그인 입력 영역 -->
                <div class="login-box">

                    <div class="input-box">

                        <div>
                            <img src="/farmstory/images/user/login_ico_id.png" alt="아이디">
                            <input type="text" name="uid" placeholder="아이디 입력">
                        </div>

                        <div>
                            <img src="/farmstory/images/user/login_ico_pw.png" alt="비밀번호">
                            <input type="password" name="pass" placeholder="비밀번호 입력">
                        </div>

                    </div>

                    <button type="submit">로그인</button>

                </div>

            </form>

            <!-- 아래 안내 박스 -->
            <div class="login-info">

                <h4>회원 로그인 안내</h4>

                <p>
                    아직 회원이 아니시면 회원으로 가입하세요.
                </p>

                <div class="login-link">
                    <a href="#">아이디 | 비밀번호찾기 | </a>
                    <a href="#">회원가입</a>
                </div>

            </div>

        </section>

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
            

