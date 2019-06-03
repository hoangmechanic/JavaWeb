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
	<form action="account/login.php" method="post">
		<input name="id" placeholder="Id" value="${item.id}">
		<input name="pass" placeholder="Password">
		<input name="remember" type="checkbox" value="true"> Remember me ?
		<hr>
		<button formaction="category/insert.php">Insert</button>
		<button formaction="category/update.php">Update</button>
		<button formaction="category/delete.php">Delete</button>
		<button>Login</button>
	</form>

</body>
</html>