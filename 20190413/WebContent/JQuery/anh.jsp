<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("button:first").click(function(){
			var w = $("img").width();
			var h = $("img").height();
			w +=5
			h +=5;
			$("img").width(w);
			$("img").height(h);
		});
		$("button:last").click(function(){
			var w = $("img").width();
			var h = $("img").height();
			w -=5
			h -=5;
			$("img").width(w);
			$("img").height(h);
		});
	});
</script>
</head>
<body>
	<h2>Anh</h2>
	<hr>
	<button>+</button>
	<button>-</button>
	<hr>
	<img src="../css/img/1011.jpg" width ="200px" height="200px">
</body>
</html>












































































































</body>
</html>