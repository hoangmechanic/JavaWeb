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
    <link href="/static/css/sunshineShop.css" rel="stylesheet" />
    <script src="/static/js/sunshineShop.js"></script>
    
</head>
<body>
    <div class="container">
		<jsp:include page="shared/_header.jsp"/>

		<jsp:include page="shared/_menu.jsp"/>

        <div class="nn-sheet row">

            <article class="col-sm-9">
                <div class="nn-body">
                	<tiles:insertAttribute name="body"/>
                </div>
            </article>

            <aside class="col-sm-3">
                <!--CartInfo-->
                <jsp:include page="shared/_cart.jsp"/>
                <!--/CartInfo-->

                <!--Search-->
				<jsp:include page="shared/_search.jsp"/>
                <!--/Search-->

                <!--Category-->
				<jsp:include page="shared/_category.jsp"/>
                <!--/Category-->

				<!--Special-->
				<jsp:include page="shared/_special.jsp"/>
                <!--/Special-->

            </aside>
        </div>

        <footer class="panel panel-default row">
	        <div class="panel-heading">
	        	<p class="text-center">Nguyễn Duy Hoàng &copy; 2019. All rights reserved.</p>
	        </div>
        </footer>
    </div>
</body>
</html>