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
							<td><input class="view-field" type="text" name="title" value="${postDTO.title}" readonly/></td>
						</tr>
						<tr>
							<th>파일</th>
							<td>
								<c:choose>
									<c:when test="${postDTO.files.size() gt 0}">
										<c:forEach var="postFileDTO" items="${postDTO.files}">
											<p><a href="/farmstory/post/fileDownload.do?menu=${menu}&category=${category}&fileId=${postFileDTO.fileId}&postFileId=${postFileDTO.id}">${postFileDTO.file.originalName}</a>&nbsp;<span>${postFileDTO.downloadCount}</span>회 다운로드</p>
										</c:forEach>
									</c:when>
									<c:otherwise>
										등록된 파일이 없습니다.
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea class="view-content">${postDTO.content}</textarea>
							</td>
						</tr>
					</table>
					<div class="button-box">
						<a href="#">삭제</a> <a href="./chef-post-modify.html">수정</a> <a
							href="./chef-post-list.html">목록</a>
					</div>
					<section class="comments comment-box">
						<h3 class="comment-header">댓글목록</h3>
						<c:choose>
							<c:when test="${postDTO.comments.size() gt 0}">
								<ul class="comment-list">
									<c:forEach var="commentDTO" items="${postDTO.comments}">
										<li class="comment-item">
											<article class="comment-content">
												<p class="comment-info">${commentDTO.writtenAt.substring(0, 10)} ${commentDTO.nickname}</p>
												<textarea class="comment-text">${commentDTO.content}</textarea>
												<div class="comment-button-area">
													<a href="#">삭제</a> <a href="#">수정</a>
												</div>
											</article>
										</li>
									</c:forEach>
								</ul>
							</c:when>
							<c:otherwise>
								<p>등록된 댓글이 없습니다.</p>
							</c:otherwise>
						</c:choose>
					</section>
					<section class="comment-write comment-box">
						<h3 class="comment-header">댓글쓰기</h3>
						<form action="/farmstory/post/commentRegister.do" method="post">
							<input type="hidden" name="postId" value="${postDTO.id}"/>
							<input type="hidden" name="menu" value="${menu}"/>
							<input type="hidden" name="category" value="${category}"/>
							<textarea class="comment-write-textarea" name="content"></textarea>
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