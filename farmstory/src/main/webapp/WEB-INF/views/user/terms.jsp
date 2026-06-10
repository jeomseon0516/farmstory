<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::user::terms</title>
    </head>
    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
    <link rel="stylesheet" href="/farmstory/css/user/terms/terms.css">       

    <body>
        <div id="container">

            <!--헤더-->
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


			<!--메인-->
			<main>
			    <section class="terms-box">
			
			        <!-- 이용약관 -->
			        <article>
			            <h4>사이트 이용약관</h4>
			
			            <textarea readonly>${terms.termsBasic}</textarea>
			
			            <label>
			                <input type="checkbox" name="agree1" id="agree1">
			                동의합니다.
			            </label>
			        </article>
			
			        <!-- 개인정보 처리방침 -->
			        <article>
			            <h4>개인정보 취급방침</h4>
			
			            <textarea readonly>${terms.termsPrivacy}</textarea>
			
			            <label>
			                <input type="checkbox" name="agree2" id="agree2">
			                동의합니다.
			            </label>
			        </article>
			
			        <!-- 버튼 -->
			        <div class="btn-area">
			            <button type="button" onclick="history.back()">취소</button>
			            <button type="button" onclick="checkAgree()">다음</button>
			        </div>
			
			    </section>
			</main>
			
			<script>
			function checkAgree() {
				
				const agree1 = document.getElementById("agree1");
				const agree2 = document.getElementById("agree2");
				
				if (!agree1.checked) {
					alert("사이트 이용약관에 동의해주세요.");
					agree1.focus();
					return;
				}
				
				if (!agree2.checked) {
					alert("개인정보 취급방침에 동의해주세요.");
					agree2.focus();
					return;
				}
				
				location.href = "${pageContext.request.contextPath}/user/register.do";
			}
			</script>

      <!--푸터-->  
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
            
            
            
            
            
            
