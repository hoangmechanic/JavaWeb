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
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
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
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
   
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
     
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      /p>
    </div>
  </div>

</div>
</body>
</html>