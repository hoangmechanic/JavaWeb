<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>Spring MVC</h1>
	</header>
	<nav>
		<a href="/home/index">Home</a>
		<a href="/home/about">About Us</a>
		<a href="/home/contact">Contact Us</a>
		<a href="/home/feedback">Feedback</a>
		<a href="/home/faq">FAQs</a>		
	</nav>
	<article>
		<tiles:insertAttribute name="body"/>
	</article>
	<footer>
		<p>Nhất Nghệ &copy; 2019. All rights reserved</p>
	</footer>
</body>
</html>