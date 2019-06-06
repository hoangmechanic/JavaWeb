<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Index page</h1>
	<h4>${message}</h4>
	<h4>${requestScope.message1}</h4>
	<form action="home/index" method="post">
		<input name="user" placeholder="User name">
		<button>Push</button>
	</form>
</body>
</html>