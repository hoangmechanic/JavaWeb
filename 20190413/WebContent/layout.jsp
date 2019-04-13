<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<style type="text/css">
		body {
			padding: 0;
			margin: 0;
			background-color: gray;
		}
		.container {
			max-width: 1000px;
			background-color: white;
			margin: 0 auto;
		}
		header {
			height: 150px;
			background-color: aqua;
		}
		nav {
			height: 30px;
			background-color: green;
		}
		article {
			width: 75%;
			min-height: 400px;
			float:left;	
		}
		aside {
			width: 25%;
			min-height: 400px;
			float:left;
			background-color: pink;	
		}
		footer {
			line-height: 60px;
			text-align: center;
			clear: both;
			background-color: darkgray;		
		}
	</style>
</head>
<body>
	<div class="container">
		<header></header>
		<nav>
			<a href="?">Home</a>
			<a href="?">About us</a>
			<a href="?">Contact us</a>
		</nav>
		<div>
			<article></article>
			<aside></aside>
		</div>
		<footer>
			Nhất nghệ &copy; 2019. All rights reserved
		</footer>
	</div>
</body>
</html>