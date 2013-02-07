<%@ include file="common/header.jsp" %>

<security:authorize access="isAuthenticated()">
	<div class="link">Welcome User: <b><security:authentication property="principal.username" /></b> | <a href="/SpringSecurityAjax/" >Back</a></div>
</security:authorize>
<%@ include file="common/footer.jsp" %>
