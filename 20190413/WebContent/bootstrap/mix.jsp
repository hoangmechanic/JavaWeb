<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

 
	<!-- panel - form -->
	<div class ="panel panel-default">
		<div class ="panel-heading">Login</div>
			<form action="">
				<div class ="form-group">
					<label>Password</label>
					<input class = "form-control">
				</div>
				<div class ="form-group">
					<label>Username</label>
					<input class = "form-control">
				</div>
				<button class="btn btn-default"><span class="glyphicon glyphyicon-log-in"></span>Login</button>
			</form>
	</div>

	<!-- panel -listgroup  -->
	<div class ="panel panel-warning">
		<div class="panel-heading">Danh muc</div>
		<div class="listgroup">
			<a class="lsit-group-item" href="?">Link1</a>
			<a class="lsit-group-item" href="?">Link2</a>
			<a class="lsit-group-item" href="?">Link3</a>
			<a class="lsit-group-item" href="?">Link4</a>
			
		</div>
	</div>
	<!-- panel -table  -->
	<div class="panel panel-warning">
			<div class="panel-heading">Danh muc</div>
			<table class="table table-hover table-condensed tblae-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Age</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>Hoang</th>
						<th>18</th>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th>Dep</th>
						<th>Zai</th>
					</tr>
				</tfoot>

			</table>
		</div>
	</div>
</body>
</html>