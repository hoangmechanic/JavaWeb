<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>ĐĂNG NHẬP</h1>
	${message}
	<form action="account/login" method="post">
		<button>Login</button>
	</form>
</body>
</html>