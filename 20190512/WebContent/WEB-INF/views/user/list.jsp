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
	<table border="1" style="width:100%">
		<tr>
			<th>ID</th>
			<th>User name</th>
			<th>Email</th>
		</tr>
		<c:forEach var="u" items="${list}">
			<tr>
				<td>${u.id}</td>
				<td>${u.fullname}</td>
				<td>${u.email}</td>
				<td><a href="user.php?id=${u.id}">Chi tiết</a></td>
			</tr>
		</c:forEach>
	
	</table>
</body>
</html>