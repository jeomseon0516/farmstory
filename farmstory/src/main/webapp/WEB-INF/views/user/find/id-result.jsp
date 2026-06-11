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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            
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
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>

