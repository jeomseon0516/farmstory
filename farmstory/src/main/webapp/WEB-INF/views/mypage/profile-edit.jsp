<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
        <a href="#" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>

        <p>
            <a href="#">HOME</a>
            <a href="#">로그인</a>
            <a href="#">회원가입</a>
            <a href="#">관리자</a>
            <a href="#">고객센터</a>
        </p>

        <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">

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
            <div class="main-content-header">
                <img src="/farmstory/images/myinfo/myinfo_nav_tit3.png">

                <section class="sub_nav_tit">
                    <nav>
                        <span>HOME > 나의정보 ></span>
                        <span class="sub_nav_select"> 정보수정</span>
                    </nav>
                </section>
            </div>

            <section class="profile-edit">
                <form action="/farmstory/mypage/profile-edit.do" method="post">

                    <input type="hidden" name="id" value="${sessUser.id}">

                    <p class="table-title">회원정보 설정</p>

                    <table class="user_modify1">
                        <tr>
                            <td>아이디</td>
                            <td>${sessUser.id}</td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td>
                                <input type="password" name="pass1" placeholder="비밀번호 입력">
                            </td>
                        </tr>
                        <tr>
                            <td>비밀번호 확인</td>
                            <td>
                                <input type="password" name="pass2" placeholder="비밀번호 입력 확인">
                                <button type="submit" name="mode" value="pass" class="img-btn">
                                    <img src="/farmstory/images/myinfo/chk_confirm.gif" alt="비밀번호 수정">
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>회원가입날짜</td>
                            <td>${sessUser.createdAt}</td>
                        </tr>
                    </table>

                    <p class="table-title">개인정보 수정</p>

                    <table class="user_modify2">
                        <tr>
                            <td>이름</td>
                            <td>
                                <input type="text" name="name" value="${sessUser.name}">
                            </td>
                        </tr>
                        <tr>
                            <td>별명</td>
                            <td>
                                <span>공백없는 한글, 영문, 숫자 입력</span><br>
                                <input type="text" name="nickname" id="nickname" value="${sessUser.nickname}" placeholder="별명 입력">

                                <button type="button" id="btnCheckNick" class="img-btn">
                                    <img src="/farmstory/images/myinfo/chk_id.gif" alt="중복확인">
                                </button>

                                <span id="nickResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td>
                                <input type="text" name="email" value="${sessUser.email}" placeholder="이메일 입력">
                                <button type="button" class="img-btn">
                                    <img src="/farmstory/images/myinfo/chk_auth.gif" alt="인증번호 받기">
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>휴대폰</td>
                            <td>
                                <input type="text" name="phone" value="${sessUser.phone}" placeholder="휴대폰 입력">
                            </td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>
                                <input type="text" name="zipCode" id="zipCode" value="${sessUser.zipCode}" placeholder="우편번호">
                                <button type="button" id="btnZip" class="img-btn">
                                    <img src="/farmstory/images/myinfo/chk_post.gif" alt="우편번호찾기">
                                </button><br>

                                <input type="text" name="address" id="address" value="${sessUser.address}" placeholder="주소 검색"><br>
                                <input type="text" name="detailAddress" id="detailAddress" value="${sessUser.detailAddress}" placeholder="상세주소 입력">
                            </td>
                        </tr>
                        <tr>
                            <td>회원탈퇴</td>
                            <td>
                                <button type="submit" name="mode" value="withdraw" class="btn-withdraw">탈퇴하기</button>
                            </td>
                        </tr>
                    </table>

                    <div class="btn-area">
                        <button type="button" class="btn-cancel" onclick="history.back();">취소</button>
                        <button type="submit" name="mode" value="profile" class="btn-modify">회원수정</button>
                    </div>
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
            <p>copyrightⓒ 김철학(개발에반하다) All rights reserved.</p>
            <p>farmstory ver1.0.1</p>
        </div>
    </footer>
</div>

<c:if test="${param.success eq '1'}">
<script>
    alert('회원정보가 수정되었습니다.');
</script>
</c:if>

<c:if test="${param.passSuccess eq '1'}">
<script>
    alert('비밀번호가 수정되었습니다.');
</script>
</c:if>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    /* 주소 검색 */
    document.getElementById('btnZip').addEventListener('click', function(e){
        e.preventDefault();

        new daum.Postcode({
            oncomplete: function(data) {
                document.getElementById('zipCode').value = data.zonecode;
                document.getElementById('address').value = data.address;
                document.getElementById('detailAddress').focus();
            }
        }).open();
    });

    /* 별명 중복확인 */
    document.getElementById('btnCheckNick').addEventListener('click', async function(){

        const nickname = document.getElementById('nickname');
        const nickResult = document.getElementById('nickResult');
        const value = nickname.value.trim();
        const currentNickname = '${sessUser.nickname}';

        if(value === ''){
            nickResult.innerText = '별명을 입력하세요.';
            nickResult.style.color = 'red';
            nickname.focus();
            return;
        }

        if(value === currentNickname){
            nickResult.innerText = '현재 사용중인 별명입니다.';
            nickResult.style.color = 'green';
            return;
        }

        const response = await fetch('/farmstory/user/check.do?type=nickname&value=' + encodeURIComponent(value));
        const data = await response.json();

        if(data.count > 0){
            nickResult.innerText = '이미 사용중인 별명입니다.';
            nickResult.style.color = 'red';
        } else {
            nickResult.innerText = '사용 가능한 별명입니다.';
            nickResult.style.color = 'green';
        }
    });
</script>

</body>
</html>