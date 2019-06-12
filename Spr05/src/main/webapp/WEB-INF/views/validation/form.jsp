<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>FORM SPRING</h1>
	<form:form action="staff/save.php" modelAttribute="staff">
		<form:input path="fullName"/>
		<p>
		<form:radiobutton path="gender" value="true" label ="Male"/>
		<form:radiobutton path="gender" value="false" label ="Female"/>
		<p>
		<form:select path="position">
			<form:options items ="${postions}" itemValue="name" itemLabel="id"/>
		</form:select>
		<form:radiobuttons path="hobbies"
			<form:options items ="${postions}" itemValue="name" itemLabel="id"/>
		/>
		<button>Save</button>
	</form:form>
</body>
</html>