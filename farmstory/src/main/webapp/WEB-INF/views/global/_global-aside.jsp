<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<aside class="sub-sidebar-aside">
	<img src="${menuOption.asideTitleImagePath}">
	<ul>
		<c:forEach var="cateOption" items="${menuOption.categoryOptions}">
			<li>
				<a href="${cateOption.path}">
					<img src="${cateOption.toString() eq category 
						? cateOption.inbOvImagePath 
						: cateOption.inbImagePath}">
				</a>
			</li>
		</c:forEach>
	</ul>
</aside>