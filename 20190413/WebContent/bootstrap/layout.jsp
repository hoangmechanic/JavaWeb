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

<style type="text/css">
header.row>div.col-sm-12{
	position: relative
}
.company{
	position: abosulte;
	left: 17px;
	bottom: 20px;
}
.company>h1{
	font-family:impact;
	font-size:40px;
	color: white;
	text-shadow: 0 0 2px red;
}
.company>div{
	font-size: 16px;
	letter-spacing: 0.9px;
	border-top: 1px dotted red;
}
</style>
</head>
<body>
	<div class="container">
		<header class="row">
			<div class="col-sm-12">
				<img class="pull-right" src="header-object.png">
				<div class ="company">
					<h1>Java Technogy Suite</h1>
					<div>The center point of the profession programming</div>
				</div>
			</div>
		</header>
		<nav class="row">
			<div class="col-sm-12">
				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#myNavbar">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">WebSiteName</a>
						</div>
						<div class="collapse navbar-collapse" id="myNavbar">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Page 1</a></li>
								<li><a href="#">Page 2</a></li>
								<li><a href="#news">News</a></li>
								  <li class="dropdown">
								    <a href="javascript:void(0)" class="dropbtn">Dropdown</a>
								    <div class="dropdown-content">
								      <a href="#">Link 1</a>
								      <a href="#">Link 2</a>
								      <a href="#">Link 3</a>
								    </div>
								  </li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<li><a href="#"><span class="glyphicon glyphicon-user"></span>
										Sign Up</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-log-in"></span> Login</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>


		</nav>
		<div class="row">
			<article class="col-sm-9">
				<!-- Noi dung dat o day -->
			<h3>Noi dung dat o day</h3>
			</article>
			
			<aside class="col-sm-3">
				<!-- Login -->

				<div class="panel panel-default">
					<div class="panel-heading">Login</div>
					<form action="">
						<div class="form-group">
							<label>Password</label> <input class="form-control">
						</div>
						<div class="form-group">
							<label>Username</label> <input class="form-control">
						</div>
						<button class="btn btn-default">
							<span class="glyphicon glyphyicon-log-in"></span>Login
						</button>
					</form>


				</div>
				<!-- Danh muc-->
			</aside>
		</div>
		<footer class="row">
			<div class="col-sm-12">
				<div class="panel panel-waring">
					<div class="panel-heading">
						<h3 class="text-center">Nhat nghe copy right</h3>
					</div>

				</div>
			</div>
		</footer>
	</div>
</body>
</html>