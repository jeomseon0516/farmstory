<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::user::register</title>
	
	<link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/user/register/register.css">
</head>
<body>
    <div id="container">
        
      <header>
                <!-- 로고 -->
                <a href="#" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="#">HOME</a>
                    |
                    <a href="#">로그인</a>
                    |
                    <a href="#">회원가입</a>
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

        <!-- 메인 섹션 -->
        <main>
            <section class="register-box">

                <h3>사이트 이용정보 입력</h3>
                <table>
                    <tr>
                        <th>아이디</th>
                        <td>
                            <input type="text" placeholder="아이디 입력">
                            <button type="button">중복확인</button>
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" placeholder="비밀번호 입력">
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인</th>
                        <td>
                            <input type="password" placeholder="비밀번호 입력 확인">
                        </td>
                    </tr>
                </table>

                <h3>개인정보 입력</h3>
                <table>
                    <tr>
                        <th>이름</th>
                        <td>
                            <input type="text" placeholder="이름 입력">
                        </td>
                    </tr>
                    <tr>
                        <th>별명</th>
                        <td>
                            <p>공백없는 한글, 영문, 숫자 입력</p>
                            <input type="text" placeholder="별명 입력">
                            <button type="button">중복확인</button>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" placeholder="이메일 입력">
                            <button type="button">인증번호 받기</button>
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰</th>
                        <td>
                            <input type="text" placeholder="휴대폰 입력">
                        </td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>
                            <input type="text" placeholder="우편번호">
                            <button type="button">우편번호찾기</button>
                            <input type="text" placeholder="주소 검색" class="addr">
                            <input type="text" placeholder="상세주소 입력" class="addr">
                        </td>
                    </tr>
                </table>

                <div class="btn-area">
                    <button type="button" class="cancel">취소</button>
                    <button type="submit" class="submit">회원가입</button>
                </div>

            </section>
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