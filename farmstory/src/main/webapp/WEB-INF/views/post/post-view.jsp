<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>farmstory::crops-story/crops-story-post-view</title>
</head>
<link rel="stylesheet" href="/global-style/reset.css">
<link rel="stylesheet" href="/global-style/global-header.css">
<link rel="stylesheet" href="/global-style/global-footer.css">
<link rel="stylesheet" href="/global-style/global-main-style.css">
<link rel="stylesheet" href="/global-style/global-post-view.css">

<body>
	<div id="container">
		<%@ include file="/WEB-INF/views/global/_header.jsp"%>


		<section class="sub-banner">
			<img src="/images/sub_top_tit5.png" alt="Community">
		</section>
		<main>
			<aside class="sub-sidebar-aside">
				<img src="/images/sub_aside_cate5_tit.png" alt="Community 커뮤니티">
				<ul>
					<li><a href="../notice/notice-post-list.html"><img
							src="/images/sub_cate5_lnb1.png" alt="공지사항"></a></li>
					<li><a href="../menu/menu-post-list.html"><img
							src="/images/sub_cate5_lnb2.png" alt="오늘의식단"></a></li>
					<li><a href="../chef/chef-post-list.html"><img
							src="/images/sub_cate5_lnb3_ov.png" alt="나도요리사"></a></li>
					<li><a href="../qna/qna-post-list.html"><img
							src="/images/sub_cate5_lnb4.png" alt="1:1고객문의"></a></li>
					<li><a href="../faq/faq-post-list.html"><img
							src="/images/sub_cate5_lnb5.png" alt="자주묻는질문"></a></li>
				</ul>
			</aside>
			<article class="main-content">
				<header class="main-content-header">
					<img src="/images/sub_nav_tit_cate5_tit3.png" alt="농작물이야기">
					<section class="sub_nav_tit">
						<nav>
							<span>HOME > 커뮤니티 ></span> <span class="sub_nav_select">나도요리사</span>
						</nav>
					</section>
				</header>
				<section>
					<h2 class="post-header-text">글보기</h2>
					<table border="0" class="main-content-table">
						<tr>
							<th>제목</th>
							<td>나도요리사 게시물입니다.
								</div>
							</td>
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