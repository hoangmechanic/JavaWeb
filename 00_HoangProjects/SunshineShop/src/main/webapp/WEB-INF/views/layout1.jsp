<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping Mall</title>
	
	<!-- jQuery -->
    <script src="/static/js/jquery.min.js"></script>
    
    <!-- jQuery Validation -->
    <script src="/static/js/jquery.validate.min.js"></script>
	
	<!-- jQuery UI -->
    <link href="/static/css/jquery-ui.min.css" rel="stylesheet" />
    <script src="/static/js/jquery-ui.min.js"></script>
	
	<!-- Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/static/js/bootstrap.min.js"></script>
	
	<!-- eStore -->
    <link href="/static/css/sunshineShop.css" rel="stylesheet" />
    <script src="/static/js/sunshineShop.js"></script>
    
</head>
<body>
    <div class="container">
   		<!-- Header -->
		<div><h1>Header</h1></div>
		<!-- Header -->

		<!-- Menu -->
		<div><h1>Menu</h1></div>
		<!-- Menu -->

		<!-- Body -->
        <div class="yourName row">
			<!-- Left -->
			<article class="col-xs-12 col-sm-9">
                <div>Left</div>
            </article>
			<!-- Right -->
			<aside class="col-xs-4 col-sm-3">
				<div>Right</div>
			</aside>
        </div>
		<!-- Body -->

		<!-- Footer -->
		<div>
			<footer class="panel panel-default row">
				<div class="panel-heading">
					<p class="text-center">Nguyễn Duy Hoàng &copy; 2019. All rights reserved.</p>
				</div>
			</footer>
		</div>

		<!-- Footer -->
    </div>
</body>
</html>