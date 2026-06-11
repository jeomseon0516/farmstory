<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
		<title>farmstory::find::password</title>		
		</head>		
		 
		    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
		    <link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
		    <link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
		    <link rel="stylesheet" href="/farmstory/css/find/password/password.css">
		
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
				<form name="formFindPassword" action="/farmstory/user/find/password.do" method="post">
					<section class="find-pass">
			
						<h3>비밀번호 찾기</h3>
			
						<table>
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" name="id" placeholder="아이디 입력">
								</td>
							</tr>
			
							<tr>
								<th>이메일</th>
								<td>
									<div class="email-box">
										<input type="text" name="email" placeholder="이메일 입력">
										<button type="button" id="btnSendEmail">인증번호 받기</button>
									</div>
			
									<div class="auth-box">
										<input type="text" name="code" placeholder="인증번호 입력">
										<button type="button" id="btnConfirm">확인</button>
									</div>
								</td>
							</tr>
						</table>
			
						<p class="desc">
							비밀번호를 찾고자 하는 아이디와 이메일을 입력해 주세요.<br>
							회원가입시 입력한 아이디와 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.<br>
							인증번호를 입력 후 확인 버튼을 누르세요.
						</p>
			
						<div class="btn-area">
							<button type="button" id="btnCancel" class="btn">취소</button>
							<button type="submit" id="btnNext" class="btn">다음</button>
						</div>
			
					</section>
				</form>
			</main>
	
			<!--푸터-->
			<footer>
				<img src="/farmstory/images/footer_logo.png">
				<div>
					<p>
						(주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인
						서울지방중소기업청 제 012345678-9-01234호<br> 등록번호 팜스토리01234 (2013.04.01)
						/ 발행인 : 홍길동<br> 대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 :
						01) 234-5678 / 부산광역시 부산진구 부전동 123
					</p>
					<p>copyrightⓒ 김철학(개발에반하다) All rights reserved.</p>
					<p>farmstory ver1.0.1</p>
				</div>
			</footer>
		</div>
		<script src="/farmstory/js/find.js"></script>
	</body>
</html>