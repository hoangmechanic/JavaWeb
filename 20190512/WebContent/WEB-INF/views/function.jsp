<%@ page pageEncoding ="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Servlet/JSP Tutorials</title>
</head>
<body>
	<h1> Function JSTL</h1>
	<h4>${message}</h4>
	<ul>
		<li>${fn:length(message)}</li>
		<li>${fn:contains(message,"Ngày") }</li>
		<li>${fn:startsWith(message,"Ngày") }</li>
		<li>${fn:endsWith(message,"Ngày") }</li>
		<li>${fn:substring(message,0, 10)}</li>
		<li>${fn:substringAfter(message,"xưa") }</li>
		<li>${fn:substringBefore(message,"xưa") }</li>
		<li>${fn:indexOf(message,"xưa") }</li>
		<li>${fn:toUpperCase(message) }</li>
		<li>${fn:toLowerCase(message)}</li>
		<li>
			<c:set var="array" value="${fn:split(fn:toLowerCase(message),' ')}"></c:set>
			<ul>
					<c:forEach var="w" items="${array}">
						<li>${fn:trim(w)}</li>
					</c:forEach>
			</ul>
		</li>
	</ul>
</body>
</html>