<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Spring MVC</h1>
	<hr>
	<nav>
		<a href="/home/index">Home</a>
		<a href="/home/about">About Us</a>
		<a href="/home/contact">Contact Us</a>
		<a href="/home/feedback">Feedback</a>
		<a href="/home/faq">FAQs</a>		
	</nav>
	<hr>
	<article>
		<tiles:insertAttribute name="body" />
	</article>
	<footer>
	<p>Hoang Nguyen &Copy; right/p>
	</footer>
</body>
</html>