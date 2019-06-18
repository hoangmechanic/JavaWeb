<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="shared/_head.jsp"/>
</head>
<body>
	<div class="container">
		<header class="row">
			<div class="col-sm-12">
				<jsp:include page="shared/_header.jsp"/>
			</div>
		</header>
		<nav class="row">
			<div class="col-sm-12">
				<jsp:include page="shared/_menu.jsp"/>
			</div>
		</nav>
		<div class="row">
			<article class="col-sm-9">
				<tiles:insertAttribute name="view"/>
			</article>
			<aside class="col-sm-3">
				<jsp:include page="shared/_right.jsp"/>
			</aside>
		</div>
		<footer class="row">
			<div class="col-sm-12">
				<jsp:include page="shared/_footer.jsp"/>
			</div>
		</footer>
	</div>
</body>
</html>