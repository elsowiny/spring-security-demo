<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>
<head>
	<title>Company Page</title>
	
</head>
<body>
	<h1>hello world</h1>
	<hr>
	
	<p>
	Hello and welcome!
	</p>
	
	<hr>
	
	<!--  Display user name and role -->
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
		<!-- Add a link to point to /leaders ... for managers -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Manager Page</a>
		</p>
	</security:authorize>
	
	
	<security:authorize access="hasRole('ADMIN')">
		<!-- Add a link to point to /systems .. only for admins -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT ADMIN</a>
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole('TEST')">
	<p>
		<a href="${pageContext.request.contextPath}/test">TEST</a>
	</p>
	</security:authorize>

	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
			   
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>