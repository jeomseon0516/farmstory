<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
	<!-- 로고 -->
	<a href="#" class="logo"><img src="/farmstory/images/logo.png"
		alt="메인로고"></a>
	<!-- 오른쪽 상단 메뉴 -->
	<p>
		<a href="/farmstory/main/main.do">HOME</a> | 
		<c:choose>
			<c:when test="${empty sessionScope.sessUser}">
				<a href="/farmstory/user/login.do">로그인</a> | 
				<a href="/farmstory/user/register.do">회원가입</a> |
			</c:when>
			<c:otherwise>
				<a href="/farmstory/user/logout.do">로그아웃</a> |
				<c:if test="${sessionScope.sessUser.role eq 'ADMIN'}">
					<a href="${pageContext.request.contextPath}/admin/dashboard.do">관리자</a> |
				</c:if>
			</c:otherwise>
		</c:choose>
		<a href="#">고객센터</a>
	</p>
	<!-- 오른쪽 테스트 배너 -->
	<img class="text" src="/farmstory/images/head_txt_img.png"
		alt="3만원이상 무료배송">
	<!-- 메인 메뉴(GNB) -->
	<ul class="gnb">
		<li><a href="/farmstory/intro/greeting/greeting.do?menu=Introduction&category=GREETING">팜스토리소개</a></li>
		<li><a href="/farmstory/market/product-list/product-list.do?menu=Cart&category=CART">장보기</a></li>
		<li><a href="/farmstory/post/list.do?menu=CropsStory&category=CROPS_STORY">농작물이야기</a></li>
		<li><a href="#">이벤트</a></li>
		<li><a href="/farmstory/post/list.do?menu=Community&category=NOTICE">커뮤니티</a></li>
	</ul>
</header>