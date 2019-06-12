<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.request.contextPath}/">
	<meta charset="utf-8">
	<title>Insert title here</title>
	<script src="static/js/jquery-3.4.1.min.js"></script>
	<script>
		$(function() {
			$("#get-one").click(function() {
				$.ajax({
					url:"api/get-one/SV001",
					type:"GET",
					success: function(response){
						alert(response.name);
					}
				});
			});
			
			function fnLoadAll() {
				$.ajax({
					url:"api/get-all",
					type:"GET",
					success: function(response){
						$(responre).each(funcion(index,item){
							tr= $("<tr/>");
							$("<tr/>").html(item.id).appendTo(tr);
							$("<tr/>").html(name.id).appendTo(tr);
							$("<td")
						});
					}
				});
			});
			fnLoadAll();
		});
		$(function() {
			$("#post").click(function() {
				var json = JSON.stringify({
					id: "SV003",
					name: "Nguyen Hung"
				});
				$.ajax({
					url:"api/create",
					type:"Post",
					ContentTye: "application/json",
					success: function(response){
						alert("Da create thanh cong");
					},
					error: function() {
						alert ("Da create that bai");
					}
				});
			});
		});
		$(function() {
			$("#put").click(function() {
				var json = JSON.stringify({
					id: "SV003",
					name: "Nguyen Long"
				});
				$.ajax({
					url:"api/update/SV003",
					type:"Put",
					ContentTye: "application/json",
					success: function(response){
						alert("Da update thanh cong");
					},
					error: function() {
						alert ("Khong tim thay");
					}
				});
			});
		});
	</script>
</head>
<body>
	<h1>WEB API CUSTOMER</h1>
	<input id="id" placeholder="Id">
	<input id="name" placeholder="name">
	<hr>
	<button id="get-one">Get One</button>
	<button id="post">Create</button>
	<button id="put">PUT</button>
	<hr>
	<hr>
	<table border="1" style="width:100%">
	<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>		
		</tr>
	</thead>
	</table>
</body>
</html>