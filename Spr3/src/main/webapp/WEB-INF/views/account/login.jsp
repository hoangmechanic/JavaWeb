<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Category Manager</h1>
	<h4>${message}</h4>
	<form action="login.php" method="post">
		<input name="id" placeholder="Id" value="${cookie.id.value}">
		<input name="pass" placeholder="Password" value="${cookie.pw.value}">
		<input name="remember" type="checkbox" value="true"> Remember me ?
		<hr>
		<button>Login</button>
	</form>

</body>
</html>