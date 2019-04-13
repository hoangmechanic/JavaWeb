<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-ok").click(function(){
			var id = $("#username").val();
			alert("Username is"+ id);
			
			var pw =$("#password").val();
			var cf =$("#confirm").val();
			if(pw !=cf){
				//$(""#password ,#confirm").css({"background-color":"yellow"});
				$(":password").css({"background-color":"yellow"});
				$("#username").val("Xac nhan mat khau khong dung");
			}
			return false; //Huy bor chuc nawng mac dinh cua button
		});
		$("#chk-all").click(function(){
			var status =$("#chk-all").prop("checked");
			$(":checkbox").prop("checked",status);
		});
	});
</script>
</head>
<body>
	<h2>JQuery selector</h2>
	<form action="">
		<div>
			<label>Username</label>
			<input id ="username" type ="text">
		</div>
		<div>
			<label>Password</label>
			<input id ="password" type ="password">
		</div>
		<div>
			<label>Confirm</label>
			<input id ="confirm" type ="password">
		</div>
		<div>
			<label>Hobies</label>
			<label><input type= "checkbox">Music</label>
			<label><input type= "checkbox">Traveling</label>
			<label><input type= "checkbox">Redaing</label>
			<label><input id="chk-all" type= "checkbox">All</label>
		</div>
		<div>
			<button id ="btn-ok">OK</button>
		</div>
	</form>
</body>
</html>












































































































</body>
</html>