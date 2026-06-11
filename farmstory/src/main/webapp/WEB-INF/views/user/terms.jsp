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
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>



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
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>
</html>
            
            
            
            
            
            
