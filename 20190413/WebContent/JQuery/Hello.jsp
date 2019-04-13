<%@page pageEncoding="utf-8" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script>
	// Tuong duong $(function(){})
	$(document).ready(function(){
		// Code here
		$("img").hover(function(){
			$("img").css({"border-color":"red"});
			$(this).attr("src","../bootstrap/shoppingcart.gif");
		}, function(){
			$("img").css({"border-color":"green"});
			$(this).attr("src","../bootstrap/header-object.png");
		});
	});
// 		$("button").click(function(){
// 			$("h1").html("Chaof quy vi dai dieu");
// 			$("h1").css({"color":"red", "border-bottom":"1px dotted red"});
// 			$("h1").attr("title","Lap trinh web");
// 		});
</script>
<style type="text/css">
	img{
		border: 1px solid blue;
	}
</style>
</head>
<body>
	<h1 title ="Web-base programming">Hello jQuery</h1>
	<hr>
	<button>Hello</button>
	<img alt="" src="../bootstrap/header-object.png">
	<img alt="" src="../bootstrap/header-object.png">
	<img alt="" src="../bootstrap/header-object.png">
</body>
</html>