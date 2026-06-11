<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>farmstory::post/post-view</title>
</head>
<link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
<link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
<link rel="stylesheet" href="/farmstory/css/post/post-view.css">

<body>
	<div id="container">
		<%@ include file="/WEB-INF/views/global/_header.jsp"%>
		<%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
		<main>
			<%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
			<article class="main-content">
				<%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>
				<section>
					<h2 class="post-header-text">글보기</h2>
					<table border="0" class="main-content-table">
						<tr>
							<th>제목</th>
							<td><input type="text" name="title" value="${postDTO.title}" readonly/></td>
						</tr>
						<tr>
							<th>파일</th>
							<td>
								<!-- <a href="#"></a> -->
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<p>나도요리사 예시글입니다.</p>
							</td>
						</tr>
					</table>
					<div class="button-box">
						<a href="#">삭제</a> <a href="./chef-post-modify.html">수정</a> <a
							href="./chef-post-list.html">목록</a>
					</div>
					<section class="comments comment-box">
						<h3 class="comment-header">댓글목록</h3>
						<ul class="comment-list">
							<li class="comment-item">
								<article class="comment-content">
									<p class="comment-info">2024-05-20 길동이</p>
									<p class="comment-text">댓글 샘플 입니다.</p>
									<div class="comment-button-area">
										<a href="#">삭제</a> <a href="#">수정</a>
									</div>
								</article>
							</li>
						</ul>
						<p>등록된 댓글이 없습니다.</p>
					</section>
					<section class="comment-write comment-box">
						<h3 class="comment-header">댓글쓰기</h3>
						<form action="#">
							<textarea class="comment-write-textarea"></textarea>
							<div class="comment-write-button-area">
								<button type="button">취소</button>
								<input type="submit" value="작성완료">
							</div>
						</form>
					</section>
				</section>
			</article>
		</main>
		<%@ include file="/WEB-INF/views/global/_footer.jsp"%>
	</div>
</body>

</html>