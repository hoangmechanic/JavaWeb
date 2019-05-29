<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>MODEL</h1>
	<h3>SV1</h3>
	<ul>
		<li>${sv1.fullname}</li>
		<li>${sv1.mark}</li>
		<li>${sv1.grade}</li>
	</ul>
	<h3>SV2</h3>
	<ul>
		<li>${sv2.fullname}</li>
		<li>${sv2.mark}</li>
		<li>${sv2.grade}</li>
	</ul>
	<h3>SV3</h3>
	<ul>
		<li>${sv3.fullname}</li>
		<li>${sv3.mark}</li>
		<li>${sv3.grade}</li>
	</ul>
</body>
</html>