<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::find::id-result</title>           
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css"> 
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css"> 
    <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css"> 
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css"> 
    <link rel="stylesheet" href="/farmstory/css/find/id-result/id-result.css">  
    

    <body>
        <div id="container">

            <!--헤더-->
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

            
            <!-- 메인 -->
            <main>
                <section class="find-result">
                    <h3>아이디 찾기 결과</h3>

                    <table>
                        <tr>
						    <th>이름</th>
						    <td>${sessionScope.foundUser.name}</td>
						</tr>
						
						<tr>
						    <th>아이디</th>
						    <td>${sessionScope.foundUser.id}</td>
						</tr>
						
						<tr>
						    <th>이메일</th>
						    <td>${sessionScope.foundUser.email}</td>
						</tr>
						
						<tr>
						    <th>가입일</th>
						    <td>${sessionScope.foundUser.createdAt}</td>
						</tr>
                    </table>

                    <p class="message">고객님의 정보와 일치하는 아이디 입니다.</p>

                    <div class="btn-area">
                        <a href="/farmstory/user/login.do" class="btn">로그인</a>
                        <a href="/farmstory/user/find/password.do" class="btn">비밀번호 찾기</a>
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

