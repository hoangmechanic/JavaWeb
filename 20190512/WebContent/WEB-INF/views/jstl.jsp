<%@ page pageEncoding ="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- @ Ctrl + sp, t Ctrl + sp, u Ctrl + sp, Ctrl + sp selec core_rt, p Ctrl + sp, c-->
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Java Standart Tag Library</h1>
	<ul>
		<li>Name: ${item.name}</li>
		<li>Unit price: ${item.unitPrice}</li>
		<li>Date: ${item.productDate}</li>
		<li>Category: ${item.category.nameVN}</li>
		<li>Special:
			<c:choose>
				<c:when test="${item.special}">Hàng đặc biệt"</c:when>
				<c:otherwise>Hàng bình thường</c:otherwise>
			</c:choose>
		</li>
		<c:if test="${item.unitPrice>24}">
		 <li> <img src="images/Koala.jpg">
		 </li>
		 </c:if>
		<c:forEach var="p" items ="${items}">
			<li>p.name: ${p.name}</li>
		</c:forEach>
	</ul>
	<hr>
	<hr>
	<jsp:include page="info.jsp"></jsp:include>
	<hr>
	<hr>
	<c:import url="/el.php"></c:import>
	
</body>
</html>