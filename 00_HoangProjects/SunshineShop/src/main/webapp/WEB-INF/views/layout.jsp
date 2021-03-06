﻿<%@page pageEncoding="utf-8" %>
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
    <link href="/static/css/sunshineshop.css" rel="stylesheet" />
    <script src="/static/js/sunshineshop.js"></script>
    
</head>
<body>
    <!--<div class="container"> // Short screen-->
   <div class="container-fluid"> 

   		<!-- Header -->
		<header>
			<jsp:include page="shared/_header.jsp"></jsp:include>
		</header>
		<!-- Header -->

		<!-- Menu -->
		<jsp:include page="shared/_menu.jsp"></jsp:include>
		<!-- Menu -->

		<!-- Body -->
        <div class="yourName row">
			<!-- Left -->
			<article class="col-xs-12 col-sm-9">
                <tiles:insertAttribute name="body"></tiles:insertAttribute>
            </article>
			<!-- Right -->
			<aside class="col-xs-4 col-sm-3">
				<jsp:include page="shared/_cart.jsp"></jsp:include>
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