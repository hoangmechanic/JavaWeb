<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("button").hover(function(){
			$(this).stop().animate({"width":"100px","height":"70px"})
		}, function(){
			$(this).stop().animate({"width":"80px","height":"50px"})
		});
	});
</script>
<style type="text/css">
	button{
		width: 80px;
		height: 50px;
	}
</style>
</head>
<body>
	<h2>Animation</h2>
	<hr>
	<button>Hello</button>
	<button>Hello</button>
	<button>Hello</button>
	<button>Hello</button>
</body>
</html>












































































































</body>
</html>