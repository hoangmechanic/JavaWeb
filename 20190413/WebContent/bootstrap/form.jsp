<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="">
			<div class="form-group col-xm-6">
				<label>Username</label> <input class="from-control">
			</div>
			<div class="form-group col-xm-6">
				<label>Password</label> <input class="from-control">
			</div>
			<div class="form-group col-sm-3">
				<label>Role</label> 
				<select class="form-control">
					<option>Administator</option>
					<option>Supervisor</option>
					<option>User</option>
				</select> <label>Password</label> <input class="from-control">
			</div>
			<div class="form-group col-sm-3">
				<label>Gender</label>
				<div class="form-control">
					<label><input type="radio">Male</label> <label><input
						type="radio">Female</label>
				</div>

			</div>
			<div class ="row">
				<div class = "form-group col-sm-12">
					<label>Notes</label>
					<textarea  class="form-control" rows="4" cols=""></textarea>
				</div>
			</div>
			<div class="form-group">
				<button class="btn btn-defautlt"><span class="glyphicon glyphicon-heart"></span> Login</button>
				<button class="btn btn-warning">Login</button>
				<button class="btn btn-defautlt">Login</button>
				<button class="btn btn-defautlt">Login</button>
				<button class="btn btn-defautlt">Login</button>
				<button class="btn btn-defautlt">Login</button>
			</div>

		</form>
	</div>
</body>
</html>