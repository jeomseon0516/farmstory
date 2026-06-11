<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>farmstory::login</title>
	</head>
	<link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
	<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
	<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
	<link rel="stylesheet" href="/farmstory/css/user/login/login.css">
	<body>
		<div id="container">
			<%@ include file="/WEB-INF/views/global/_header.jsp"%>
			<main>
				<section class="login">
					<form action="/farmstory/user/login.do" method="post">
	
						<!-- 로그인 입력 영역 -->
						<div class="login-box">
	
							<div class="input-box">
	
								<div>
									<img src="/farmstory/images/user/login_ico_id.png" alt="아이디">
									<input type="text" name="id" placeholder="아이디 입력">
								</div>
	
								<div>
									<img src="/farmstory/images/user/login_ico_pw.png" alt="비밀번호">
									<input type="password" name="pass" placeholder="비밀번호 입력">
								</div>
	
							</div>
	
							<button type="submit">로그인</button>
	
						</div>
	
					</form>
	
					<!-- 아래 안내 박스 -->
					<div class="login-info">
	
						<h4>회원 로그인 안내</h4>
	
						<p>아직 회원이 아니시면 회원으로 가입하세요.</p>
	
						<div class="login-link">
							<a href="/farmstory/user/find/id.do">아이디 </a> | <a
								href="/farmstory/user/find/password.do">비밀번호찾기 </a> | <a
								href="/farmstory/user/register.do">회원가입</a>
						</div>
					</div>
				</section>
			</main>
			<%@ include file="/WEB-INF/views/global/_footer.jsp"%>
		</div>
	</body>
</html>


