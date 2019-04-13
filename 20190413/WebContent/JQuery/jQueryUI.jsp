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
		$(".datepicker").datepicker();
		$(".datepicker2").datepicker({
			dateFormat: "dd-mm-yy"
		});
		$(".datepicker3").datepicker({
			dateFormat: "dd-mm-yy",
			minDate: "-3D",
			maxDate: "+2D+1M"
		});
	});
</script>
<style type="text/css">
	img{
		border: 1px solid blue;
	}
</style>
</head>
<body>
	<h1>Datepicker</h1>
	<hr>
	<input class="datepicker">
	<input class="datepicker2">
	<input class="datepicker3">
</body>
</html>