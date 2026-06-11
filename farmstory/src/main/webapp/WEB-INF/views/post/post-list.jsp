<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>farmstory::post/post-list</title>
        
        <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    	<link rel="stylesheet" href="/farmstory/css/global-style/global-header.css">
    	<link rel="stylesheet" href="/farmstory/css/global-style/global-footer.css">
        <link rel="stylesheet" href="/farmstory/css/global-style/global-main-style.css">
    	<link rel="stylesheet" href="/farmstory/css/post/post-list.css">
    </head>

    <body>
        <div id="container">
            <header>
                <!-- 로고 -->
                <a href="#" class="logo"><img src="/farmstory/images/logo.png" alt="메인로고"></a>
                <!-- 오른쪽 상단 메뉴 -->
                <p>
                    <a href="#">HOME</a>
                    |
                    <a href="#">로그인</a>
                    |
                    <a href="#">회원가입</a>
                    |
                    <a href="#">관리자</a>
                    |
                    <a href="#">고객센터</a>
                </p>
                <!-- 오른쪽 테스트 배너 -->
                <img class="text" src="/farmstory/images/head_txt_img.png" alt="3만원이상 무료배송">
                <!-- 메인 메뉴(GNB) -->
                <ul class="gnb">
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="#">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </header>
            <section class="sub-banner">
                <img src="/farmstory/images/sub_top_tit5.png" alt="Community">
            </section>
            <main>
                <aside class="sub-sidebar-aside">
                    <img src="/farmstory/images/sub_aside_cate5_tit.png" alt="Community 커뮤니티">
                    <ul>
                        <li><a href="../notice/notice-post-list.html"><img src="/farmstory/images/sub_cate5_lnb1.png" alt="공지사항"></a></li>
                        <li><a href="../menu/menu-post-list.html"><img src="/farmstory/images/sub_cate5_lnb2.png" alt="오늘의식단"></a></li>
                        <li><a href="../chef/chef-post-list.html"><img src="/farmstory/images/sub_cate5_lnb3_ov.png" alt="나도요리사"></a></li>
                        <li><a href="../qna/qna-post-list.html"><img src="/farmstory/images/sub_cate5_lnb4.png" alt="1:1고객문의"></a></li>
                        <li><a href="../faq/faq-post-list.html"><img src="/farmstory/images/sub_cate5_lnb5.png" alt="자주묻는질문"></a></li>
                    </ul>
                </aside>
                <article class="main-content">
                    <header class="main-content-header">
                        <img src="/farmstory/images/sub_nav_tit_cate5_tit3.png" alt="나도요리사">
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 커뮤니티 ></span>
                                <span class="sub_nav_select">나도요리사</span>
                            </nav>
                        </section>
                    </header>
                    <section>
                        <span class="post-list-header-text">글목록</span>
                        <form action="/farmstory/post/list.do">
                        	<input type="hidden" name="category" value="${category}"/>
                            <input type="text" name="keyword" placeholder="제목 키워드, 글쓴이 검색">
                            <button>검색</button>
                        </form>
                        <table border="0" class="table-post">
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                                <th>날짜</th>
                                <th>조회</th>
                            </tr>
                            <c:forEach var="dto" items="${dtoList}">
	                            <tr>
	                                <td>${pageStart}</td>
	                                <td class="post-title"><a href="./chef-post-view.html">${dto.title}[${dto.commentCount}]</a></td>
	                                <td>${dto.nickname}</td>
	                                <td>${dto.writtenAt}</td>
	                                <td>${dto.viewCount}</td>
	                            </tr>
	                            <c:set var="pageStart" value="${pageStart - 1}"/>
                            </c:forEach>
                        </table>
                        <div>
							<div class="pagination">
								<c:if test="${pageGroupDTO.start > 1}">
									<a href="/farmstory/post/list.do?category=${category}&page=${pageGroupDTO.start - 1}" class="button-edge">이전</a>
								</c:if>
								<c:forEach var="i" begin="${pageGroupDTO.start}"
									end="${pageGroupDTO.end}">
									<a href="/farmstory/post/list.do?category=${category}&page=${i}" class="button-number ${currentPage == i ? 'selected' : ''}">${i}</a>
								</c:forEach>
								<c:if test="${pageGroupDTO.end < lastPageNum}">
									<a href="/farmstory/post/list.do?category=${category}&page=${pageGroupDTO.end + 1}" class="button-edge">다음</a>
								</c:if>
							</div>
                            <div class="button-wrap">
                                <a href="./chef-post-write.html">글쓰기</a>
                            </div>
                        </div>
                    </section>
                </article>
            </main>
                <footer>
                    <img src="/farmstory/images/footer_logo.png">
                    <div>
                        <p>
                            (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br>
                            등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                            대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                        </p>
                        <p>
                            copyrightⓒ 김철학(개발에반하다) All rights reserved.
                        </p>
                        <p>farmstory ver1.0.1</p>
                    </div>
                </footer>
        </div>
    </body>
</html>