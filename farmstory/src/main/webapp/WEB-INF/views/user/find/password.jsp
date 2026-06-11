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
				
				<%@ include file="/WEB-INF/views/global/_header.jsp" %>

	
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
			<%@ include file="/WEB-INF/views/global/_footer.jsp" %>

		</div>
		<script src="/farmstory/js/find.js"></script>
	</body>
</html>