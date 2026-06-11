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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


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
                        <form action="/farmstory/mypage/profile-edit.do" method="post">
                            <h2>회원정보 설정</h2>

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
                                        <button type="submit" name="mode" value="pass">비밀번호 수정</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>회원가입날짜</td>
                                    <td>${sessUser.createdAt}</td>
                                </tr>
                            </table>

                            <br>

                            <h2>개인정보 수정</h2>

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
                                        공백없는 한글, 영문, 숫자 입력<br>
                                        <input type="text" name="nickname" value="${sessUser.nickname}" placeholder="별명 입력">
                                        <button type="button"><img src="/farmstory/images/myinfo/chk_id.gif"></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>이메일</td>
                                    <td>
                                        <input type="text" name="email" value="${sessUser.email}" placeholder="이메일 입력">
                                        <button type="button"><img src="/farmstory/images/myinfo/chk_auth.gif"></button>
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
                                        <input type="text" name="zipCode" value="${sessUser.zipCode}" placeholder="우편번호">
                                        <button type="button"><img src="/farmstory/images/myinfo/chk_post.gif"></button><br>
                                        <input type="text" name="address" value="${sessUser.address}" placeholder="주소 검색"><br>
                                        <input type="text" name="detailAddress" value="${sessUser.detailAddress}" placeholder="상세주소 입력"><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>회원탈퇴</td>
                                    <td>
                                        <button type="submit" name="mode" value="withdraw">탈퇴하기</button>
                                    </td>
                                </tr>
                            </table>

                            <button type="submit" name="mode" value="profile">회원수정</button>
                        </form>
                    </section>
                </article>
            </main>

            <!-- 푸터 -->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>