<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::user::register</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/user/register/register.css">

    <!-- 다음 우편번호 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <!-- 회원가입 유효성 검사 -->
    <script src="/farmstory/js/validation.js"></script>
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="#" class="logo">
            <img src="/farmstory/images/logo.png" alt="메인로고">
        </a>

        <p>
            <a href="/farmstory/main/main.do">HOME</a> |
            <a href="/farmstory/user/login.do">로그인</a> |
            <a href="/farmstory/user/register.do">회원가입</a> |
            <a href="#">관리자</a> |
            <a href="#">고객센터</a>
        </p>

        <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">

        <ul class="gnb">
            <li><a href="/farmstory/intro/greeting/greeting.do">팜스토리소개</a></li>
            <li><a href="/farmstory/market/product-list/product-list.do">장보기</a></li>
            <li><a href="#">농작물이야기</a></li>
            <li><a href="#">이벤트</a></li>
            <li><a href="#">커뮤니티</a></li>
        </ul>
    </header>

    <!-- 메인 -->
    <main>

        <!-- 회원가입 폼 -->
        <form action="/farmstory/user/register.do" method="post">
            <section class="register-box">

                <!-- 사이트 이용정보 -->
                <h3>사이트 이용정보 입력</h3>

                <table>
                    <tr>
                        <th>아이디</th>
                        <td>
                            <input type="text" name="id" placeholder="아이디 입력">
                            <button type="button" id="btnId">중복확인</button>
                            <span class="idResult"></span>
                        </td>
                    </tr>

                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" name="pass" placeholder="비밀번호 입력">
                            <span class="passResult"></span>
                        </td>
                    </tr>

                    <tr>
                        <th>비밀번호 확인</th>
                        <td>
                            <input type="password" name="pass2" placeholder="비밀번호 입력 확인">
                        </td>
                    </tr>
                </table>

                <!-- 개인정보 -->
                <h3>개인정보 입력</h3>

                <table>
                    <tr>
                        <th>이름</th>
                        <td>
                            <input type="text" name="name" placeholder="이름 입력">
                            <span class="nameResult"></span>
                        </td>
                    </tr>

                    <tr>
                        <th>별명</th>
                        <td>
                            <p>공백없는 한글, 영문, 숫자 입력</p>
                            <input type="text" name="nickname" placeholder="별명 입력">
                            <button type="button" id="btnNickname">중복확인</button>
                            <span class="nicknameResult"></span>
                        </td>
                    </tr>

                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" name="email" placeholder="이메일 입력">
                            <button type="button" id="btnEmail">인증번호 받기</button>
                            <span class="emailResult"></span>

                            <!-- 이메일 인증번호 입력 영역 -->
                            <div class="auth" style="display:none;">
                                <input type="text" name="code" placeholder="인증코드 입력">
                                <button type="button" id="btnConfirm">확인</button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th>휴대폰</th>
                        <td>
                            <input type="text" name="phone" placeholder="010-1234-1234">
                            <span class="phoneResult"></span>
                        </td>
                    </tr>

                    <tr>
                        <th>주소</th>
                        <td>
                            <!-- 우편번호 -->
                            <input type="text" name="zipCode" placeholder="우편번호" readonly>
                            <button type="button" id="btnZipCode">우편번호찾기</button>

                            <!-- 기본주소 -->
                            <input type="text" name="address" placeholder="주소 검색" class="addr" readonly>

                            <!-- 상세주소 -->
                            <input type="text" name="detailAddress" placeholder="상세주소 입력" class="addr">
                        </td>
                    </tr>
                </table>

                <!-- 하단 버튼 -->
                <div class="btn-area">
                    <button type="button" class="cancel">취소</button>
                    <button type="submit" class="submit">회원가입</button>
                </div>

            </section>
        </form>
    </main>

    <!-- 푸터 -->
    <footer>
        <img src="/farmstory/images/footer_logo.png">

        <div>
            <p>
                (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br>
                등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
            </p>

            <p>copyrightⓒ 김철학(개발에반하다) All rights reserved.</p>
            <p>farmstory ver1.0.1</p>
        </div>
    </footer>

</div>
</body>
</html>