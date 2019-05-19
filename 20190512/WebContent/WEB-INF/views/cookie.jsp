<%@ page pageEncoding ="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1>Cookie demo</h1>
	<form action="cookie.php" method="post">
		<button>Read cookie</button>
	</form>
	Ket qua: ${username}
</body>
</html>