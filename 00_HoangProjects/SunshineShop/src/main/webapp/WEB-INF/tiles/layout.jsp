<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<jsp:include page="common/_head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<header class="row">
			<div class="col-sm-12">
				<jsp:include page="common/_header.jsp"/>
			</div>
		</header>
		<nav class="row">
			<div class="col-sm-12">
				<jsp:include page="common/_menu.jsp"/>
			</div>
		</nav>
		<div class="row">
			<article class="col-sm-9">
				<tiles:insertAttribute name="body"/>
			</article>
			<aside class="col-sm-3">
				<jsp:include page="common/_right.jsp"/>
			</aside>
		</div>
		<footer class="row">
			<div class="col-sm-12">
				<jsp:include page="common/_footer.jsp"/>
			</div>
		</footer>
	</div>
</body>
</html>