<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var pageNo = 5;
		$(".paper>button:eq(0)").click(function(){
			pageNo = 1;
			$(".paper>button:eq(2)").html(pageNo);
		});
		$(".paper>button:eq(1)").click(function(){
			pageNo -= 1;
			$(".paper>button:eq(2)").html(pageNo);
		});
		$(".paper>button:eq(3)").click(function(){
			pageNo += 1;
			$(".paper>button:eq(2)").html(pageNo);
		});
		$(".paper>button:eq(4)").click(function(){
			pageNo = 9;
			$(".paper>button:eq(2)").html(pageNo);
		});
	});
</script>
</head>
<body>
	<h2>JQuery Selector</h2>
	<hr>
	
	<div class ="paper">
		<button>|<< </button>
		<button> << </button>
		<button>5 </button>
		<button> >> </button>
		<button> >>|</button>
	</div>
</body>
</html>












































































































</body>
</html>