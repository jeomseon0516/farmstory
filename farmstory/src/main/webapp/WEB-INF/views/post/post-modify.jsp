<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>farmstory::post/post-modify</title>
</head>
<link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
<link rel="stylesheet" href="/farmstory/css/post/post-form.css">

<body>
    <div id="container">
        <%@ include file="/WEB-INF/views/global/_header.jsp" %>
        <%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
        <main>
            <%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
            <article class="main-content">
                <%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>
                <section>
                    <span class="post-list-header-text">글수정</span>
                    <form action="#">
                        <table border="0">
                            <tr>
                                <th>제목</th>
                                <td><Input type="text" name="title" placeholder="제목을 입력하세요."></Input></td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td><textarea name="content"></textarea></td>
                            </tr>
                            <tr>
                                <th>파일</th>
                                <td>
                                    <p class="file-notice">최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능</p>
                                    <Input type="file" name="file1">
                                    <Input type="file" name="file2">
                                </td>
                            </tr>
                        </table>
                        <div class="button-box">
                            <a href="./chef-post-list.html">취소</a>
                            <input type="submit" value="수정완료">
                        </div>
                    </form>
                </section>
            </article>
        </main>
            <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

    </div>
</body>

</html>