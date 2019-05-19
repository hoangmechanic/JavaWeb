<%@ page pageEncoding ="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Category List</h1>
	<h4>${list}</h4>
	<ul>
		<li>Name: ${item.name}</li>
		<li>Unit Price: ${item.unitPrice}</li>
		<li>Category: ${item.category.name}</li>
	</ul>
	<ul>
		<li>ID: ${list[0].id}</li>
		<li>Name: ${list[0].name}</li>
		<li>NameVN: ${list[0].nameVN}</li>
	</ul>
	<c:forEach var ="o" items="${list}">
		<ul>
			<li>ID: ${o.id}</li>
			<li>Name: ${o.name}</li>
			<li>NameVN: ${o.nameVN}</li>
		</ul>
	</c:forEach>
	<table border="1" style="width: 100%">
	<tr>
			<th>ID</th>
			<th>Name</th>
			<th>NameVN</th>
		</tr>
	<c:forEach var ="o" items="${list}">
		<tr>
			<td>${o.id}</td>
			<td>${o.name}</td>
			<td>${o.nameVN}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>