<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Category Manager</h1>
	<h4>${message}</h4>
	<form action="index.php" method="post">
		<input name="id" placeholder="Id" value="${item.id}">
		<input name="name" placeholder="Name" value="${item.name}">
		<input name="nameVN" placeholder="Name VN" value="${item.nameVN}">
		<hr>
		<button formaction="insert.php">Insert</button>
		<button formaction="update.php">Update</button>
		<button formaction="delete.php">Delete</button>
		<button>Clear</button>
	</form>
	<hr>
	<table border="1" style="width:100%">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Name VN</th>
		<th></th>
	</tr>
	<c:forEach var="c" items="${list}">
	<tr>
		<td>${c.id}</td>
		<td>${c.name}</td>
		<td>${c.nameVN}</td>
		<td>
			<a href="edit/${c.id}.php">Edit</a>
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>