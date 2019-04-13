<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".outer").hover(function(){
			$(this).find(".inner").animate({"bottom":"0px","opacity":"1"},2000)
		}, function(){
			$(this).find(".inner").animate({"bottom":"-50px","opacity":"0"},2000)
		});
	});
</script>
<style type="text/css">
	.outer{
		width: 200px;
		height: 200px;
		border: 1px solid red;
		display: inline-block;
		
		position: relative;
		overflow: hidden;
	}
	.inner{
		width: 200px;
		height: 50px;
		border: 1px solid blue;
		background-color: yellow;
	
		position: absolute;
		bottom: -50px;
		left: 0px;
	}
</style>
</head>
<body>
	<h2>Animation</h2>
	<hr>
	<div class="outer">
		<div class="inner"></div>
	</div>
	<div class="outer">
		<div class="inner"></div>
	</div>
	<div class="outer">
		<div class="inner"></div>
	</div>
	<div class="outer">
		<div class="inner"></div>
	</div>
	<div class="outer">
		<div class="inner"></div>
	</div>
</body>
</html>












































































































</body>
</html>