<%@ page pageEncoding ="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Servlet Scope Accessing</h1>
	<ul>
		<li>Request: ${requestScope.xxx}</li>
		<li>Session: ${sessionScope.xxx}</li>
		<li>Application: ${applicationScope.xxx}</li>
		<li>Auto: ${xxx}</li>
	</ul>

</body>
</html>