<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="shared/_head.jsp"/>
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
	        	<p class="text-center">Nhất Nghệ &copy; 2017. All rights reserved.</p>
	        </div>
        </footer>
    </div>
</body>
</html>