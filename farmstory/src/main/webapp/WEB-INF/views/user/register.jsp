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
    <%@ include file="/WEB-INF/views/global/_header.jsp" %>


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
    <%@ include file="/WEB-INF/views/global/_footer.jsp" %>


</div>
</body>
</html>