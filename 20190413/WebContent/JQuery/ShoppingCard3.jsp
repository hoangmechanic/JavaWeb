<%@page pageEncoding="utf-8" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<link href="js/jquery-ui.min.css" rel ="stylesheet">
<script>
	// Tuong duong $(function(){})
	$(document).ready(function(){
		
		$(".add-to-cart").click(function(){
			//var css = '.cart-fly{background-image: url(../css/img/1011.jpg);background-size: 100% 100%}';
			//var css = ".cart-fly{background-image: url(../css/img/1011.jpg);background-size: 100% 100%}";
			var x= $(this).parent().find("img");
			var src = x.attr("src");

			//var css = '.cart-fly{background-image: url("' + src +'");background-size: 100% 100%}';
			var css = '.cart-fly{background-image: url(' + src +');background-size: 100% 100%}';
			$("#cart-fly").html(css);
			$(this).parent().find("img").effect("transfer",{to:"#cart", className:"cart-fly"});
		});
	});
</script>
<style id="cart-fly"></style>
<style type="text/css">
	
	.prod{
		width: 200px;
		border-radius:10px;
		box-shadow: 0 0 5px red;
		padding: 5px;
		margin: 5px;
		display: inline-block;
		text-align: center;
	}
	.prod>img{
	max-width: 95%;
	height:150px;
	}
	#cart{
		width: 60px;
		position: fixed;
		bottom: 5px;
		right: 5px;
	}
</style>
</head>
<body>
	<h1>Stransfer Effectr</h1>
	<hr>
	<div class= "prod">
		<img src="../css/img/1011.jpg">
		<button class="add-to-cart"><img src="../css/img/Heart.png"></button>
	</div>
	<div class= "prod">
		<img src="../css/img/1004.jpg">
		<button class="add-to-cart"><img src="../css/img/Heart.png"></button>
	</div>
	<div class= "prod">
		<img src="../css/img/hp.jpg">
		<button class="add-to-cart"><img src="../css/img/Heart.png"></button>
	</div>
	<div class= "prod">
		<img src="../css/img/1004.jpg">
		<button class="add-to-cart"><img src="../css/img/Heart.png"></button>
	</div>
	<div class= "prod">
		<img src="../css/img/1011.jpg">
		<button class="add-to-cart"><img src="../css/img/Heart.png"></button>
	</div>

	<img id="cart" src="../css/img/Add to basket.png">
</body>
</html>