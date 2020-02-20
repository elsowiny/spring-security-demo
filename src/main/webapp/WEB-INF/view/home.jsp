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
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
			   
		<input type="submit" value="Logout" />
	
	</form:form>
	
	
</body>

</html>