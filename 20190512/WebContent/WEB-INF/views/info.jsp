<%@ page pageEncoding ="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Web info</h1>
	<li>Context path: ${pageContext.request.contextPath}</li>
	<li>Method: ${pageContext.request.method}</li>
	<li>RequestURL: ${pageContext.request.requestURL}</li>
	<li>RequestURI: ${pageContext.request.requestURI}</li>
	<li>QueryString: ${pageContext.request.queryString}</li>
	<li>Parameter(a): ${param['a']}</li>
</body>
</html>