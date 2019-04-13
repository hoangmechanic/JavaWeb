<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-show").click(function(){
			$("img").show(500);
		});
		$("#btn-hide").click(function(){
			$("img").hide(500);
		});
	});
	$(document).ready(function(){
		$("#btn-fadeIn").click(function(){
			$("img").fadeIn(500, function(){
				alert("Han hanh don chao");
			});
		});
		$("#btn-fadeOut").click(function(){
			$("img").fadeOut(500, function(){
				alert("Tam biet");
			});
		});
	});
</script>
</head>
<body>
	<h2>Show hide</h2>
	<hr>
	
	<div class ="paper">
		<button id= "btn-show">Show </button>
		<button id="btn-hide">Hide</button>
		<button id= "btn-fadeIn">fadeIn </button>
		<button id="btn-fadeOut">fadeOut</button>
		<hr>
		<img alt="" src="../css/img/1011.jpg">
	</div>
</body>
</html>












































































































</body>
</html>