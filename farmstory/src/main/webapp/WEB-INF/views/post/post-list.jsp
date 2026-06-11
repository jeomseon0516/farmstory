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
			<%@ include file="/WEB-INF/views/global/_header.jsp" %>
			<%@ include file="/WEB-INF/views/global/_global-sub-banner.jsp" %>
            <main>
                <%@ include file="/WEB-INF/views/global/_global-aside.jsp" %>
                <article class="main-content">
                    <%@ include file="/WEB-INF/views/global/_main-content-header.jsp" %>
                    <section>
                        <span class="post-list-header-text">글목록</span>
                        <form action="/farmstory/post/list.do">
                        	<input type="hidden" name="menu" value="${menu}"/>
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
	                                <td class="post-title">
	                                	<a href="/farmstory/post/view.do?menu=${menu}&category=${category}&id=${dto.id}&page=${currentPage}${not empty keyword ? '&keyword='.concat(keyword) : ''}">
	                                		${dto.title}[${dto.commentCount}]
	                                	</a>
	                                	</td>
	                                <td>${dto.nickname}</td>
	                                <td>${dto.writtenAt.substring(0, 16)}</td>
	                                <td>${dto.viewCount}</td>
	                            </tr>
	                            <c:set var="pageStart" value="${pageStart - 1}"/>
                            </c:forEach>
                        </table>
                        <div>
							<div class="pagination">
								<c:if test="${pageGroupDTO.start > 1}">
									<a href="/farmstory/post/list.do?menu=${menu}&category=${category}&page=${pageGroupDTO.start - 1}" class="button-edge">이전</a>
								</c:if>
								<c:forEach var="i" begin="${pageGroupDTO.start}" end="${pageGroupDTO.end}">
									<a href="/farmstory/post/list.do?menu=${menu}&category=${category}&page=${i}" class="button-number ${currentPage == i ? 'selected' : ''}">${i}</a>
								</c:forEach>
								<c:if test="${pageGroupDTO.end < lastPageNum}">
									<a href="/farmstory/post/list.do?menu=${menu}&category=${category}&page=${pageGroupDTO.end + 1}" class="button-edge">다음</a>
								</c:if>
							</div>
                            <div class="button-wrap">
                                <a href="/farmstory/post/write.do?menu=${menu}&category=${category}">글쓰기</a>
                            </div>
                        </div>
                    </section>
                </article>
            </main>
			<%@ include file="/WEB-INF/views/global/_footer.jsp" %>
        </div>
    </body>
</html>