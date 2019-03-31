<%@page pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
.outer{
	border: 1px solid red;
}
.inner{
	border: 1px dashed blue;
}
.inner>li {
	border-bottom: 1px dotted green
}
.outer>li {
	border-bottom: 1px dotted yellow
}
</style>
</head>
<body>
	<h2>CONTEXTUAL SELECTORS</h2>
	<ul class="outer">
		<li>Hello world</li>
		<li>Hello world</li>
		<li>Hello world</li>
		<li>Hello world</li>
		<li>Hello world</li>
		<li>Hello world
			<ul class="inner">
				<li>Hello world</li>
				<li>Hello world</li>
				<li>Hello world</li>
				<li>Hello world</li>
				<li>Hello world</li>
			</ul>
		</li>
		<li>Hello world</li>
	</ul>
	<h1>Hello world</h1>
</body>
</html>