<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::find::password-change</title>
</head>

<link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
<link rel="stylesheet" href="/farmstory/css/find/password-change/password-change.css">


    <body>
    <div id="container">

            <!--헤더-->
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            
            <!-- 메인 -->
            <main>
			    <form action="/farmstory/user/find/password-change.do" method="post" name="formChangePassword">
			
			        <section class="password-change">
			
			            <!-- 제목 -->
			            <h3>비밀번호 변경</h3>
			
			            <!-- 입력 테이블 -->
			            <table>
			                <tr>
			                    <th>아이디</th>
			                    <td>
			                        <strong>${sessionScope.foundUser.id}</strong>
			                    </td>
			                </tr>
			
			                <tr>
			                    <th>새 비밀번호</th>
			                    <td>
			                        <input type="password"
			                               name="pass"
			                               placeholder="새 비밀번호 입력">
			                    </td>
			                </tr>
			
			                <tr>
			                    <th>새 비밀번호 확인</th>
			                    <td>
			                        <input type="password"
			                               name="passConfirm"
			                               placeholder="새 비밀번호 확인">
			                    </td>
			                </tr>
			            </table>
			
			            <!-- 안내문구 -->
			            <p class="desc">
			                비밀번호를 변경해 주세요.<br>
			                영문, 숫자, 특수문자를 사용하여 8자 이상 입력해 주세요.
			            </p>
			
			            <!-- 버튼 -->
			            <div class="btn-area">
			                <button type="button" class="btn cancel" id="btnCancel">취소</button>
			                <button type="submit" class="btn next" id="btnChange">다음</button>
			            </div>
			
			        </section>
			
			    </form>
			</main>



            <!--푸터-->
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>