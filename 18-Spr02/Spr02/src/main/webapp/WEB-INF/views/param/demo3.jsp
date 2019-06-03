<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Form 3</h1>
	${message}
	<form action="demo3" method ="post">
		<input name="id" placeholder="Username">
		<input name="pass" placeholder="Password">
		<input name="h" placeholder="HHHH">
		<hr>
		<button>Submit</button>
	</form>
</body>
</html>