<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::find::id</title>
        <link rel="stylesheet" href="id.css">     
    </head>
    

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
                <section class="find-id-box">

                    <!-- 제목 -->
                    <h3>아이디 찾기</h3>

                    <!-- 입력 테이블 -->
                    <table>
                        <tr>
                            <th>이름</th>
                            <td>
                                <input type="text" placeholder="이름 입력">
                            </td>
                        </tr>

                        <tr>
                            <th>이메일</th>
                            <td>
                                <input type="text" placeholder="이메일 입력">
                                <button type="button">인증번호 받기</button>
                                <br>
                                <input type="text" placeholder="인증번호 입력">
                                <button type="button">확인</button>
                            </td>
                        </tr>
                    </table>

                    <!-- 안내 문구 -->
                    <p class="guide">
                        회원가입시 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.<br>
                        인증번호를 입력 후 확인 버튼을 누르세요.
                    </p>

                    <!-- 하단 버튼 -->
                    <div class="btn-area">
                        <button type="button">취소</button>
                        <button type="button">다음</button>
                    </div>

                </section>
            </main>

            <!--푸터-->  
            <footer>
                <img src="/images/footer_logo.png">
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
            