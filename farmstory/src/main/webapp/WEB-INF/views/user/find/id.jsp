<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>farmstory::find::id</title>
        
        <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    	<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    	<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
        <link rel="stylesheet" href="/farmstory/css/find/id/id.css">     
    </head>
    

<body>
    <div id="container">

        <!--헤더-->
        <%@ include file="/WEB-INF/views/global/_header.jsp" %>


       <!-- 메인 -->
         <main>
    <form name="formFindId" action="/farmstory/user/find/id.do" method="post">

        <section class="find-id-box">

            <h3>아이디 찾기</h3>

            <table>
                <tr>
                    <th>이름</th>
                    <td>
                        <input type="text" name="name" placeholder="이름 입력">
                    </td>
                </tr>

                <tr>
                    <th>이메일</th>
                    <td>
                        <input type="text" name="email" placeholder="이메일 입력">
                        <button type="button" id="btnSendEmail">인증번호 받기</button>
                        <br>

                        <input type="text" name="code" placeholder="인증번호 입력">
                        <button type="button" id="btnConfirm">확인</button>
                    </td>
                </tr>
            </table>

            <p class="guide">
                회원가입시 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.<br>
                인증번호를 입력 후 확인 버튼을 누르세요.
            </p>

            <div class="btn-area">
                <button type="button" id="btnCancel">취소</button>
                <button type="submit" id="btnNext">다음</button>
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
            