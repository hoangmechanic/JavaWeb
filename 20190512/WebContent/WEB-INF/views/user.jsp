<%@ page pageEncoding ="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> User Details</h1>
	<ul>
		<li>Username: ${user.fullname}</li>
		<li>Username: ${user.email}</li>
		<li>Username: ${user.photo}</li>
	</ul>
	
</body>
</html>