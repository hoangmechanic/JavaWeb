<%@ page pageEncoding ="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Expression Language EL</h1>
	<h3>ATTRIBUTE</h3>
	<ul>
		<li> ${message}</li>
		<li> ${resquestScope.message}</li>
		<li> ${sessionScope.message}</li>
		<li> ${applicationScope.message}</li>
	</ul>
	<h3>BEAN</h3>
	<ul>
		<li> ${bean.name}</li>
		<li> ${bean.nameVN}</li>
	</ul>
	<h3>MAP</h3>
	<ul>
		<li> ${map.mobile}</li>
		<li> ${map['Laptop']}</li>
	</ul>
	<h3>COLECTION</h3>
	<ul>
		<li> ${list[0]}</li>
		<li> ${list[0]}</li>
	</ul>
	<h3> PARMA & COOKIE</h3>
	<ul>
		<li> ${cookie.JSESSIONID.value}</li>
		<li> ${param.fullname}</li>
		<li> ${param['fullname']}</li>
	</ul>
</body>
</html>