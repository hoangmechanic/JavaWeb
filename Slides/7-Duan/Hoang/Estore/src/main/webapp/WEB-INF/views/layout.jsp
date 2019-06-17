﻿<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping Mall</title>
	
	<!-- jQuery -->
    <script src="static/js/jquery.min.js"></script>
    
    <!-- jQuery Validation -->
    <script src="static/js/jquery.validate.min.js"></script>
	
	<!-- jQuery UI -->
    <link href="static/css/jquery-ui.min.css" rel="stylesheet" />
    <script src="static/js/jquery-ui.min.js"></script>
	
	<!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet" />
    <script src="static/js/bootstrap.min.js"></script>
	
	<!-- eShop -->
    <link href="static/css/eshop.css" rel="stylesheet" />
    
</head>
<body>
    <div class="container">
        <header class="nn-header row">
        	<div class="nn-company">
	            <h1>Online shopping mall</h1>
	            <h5>The center point of the professional programming</h5>
            </div>
            <img class="pull-right" src="static/images/header-object.png" />
        </header>

        <div class="navbar navbar-inverse row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
			<!--Menu-->
                <ul class="nav navbar-nav">
                    <li><a href=""><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
                    <li><a href=""><span class="glyphicon glyphicon-th-list"></span> Giới thiệu</a></li>
                    <li><a href=""><span class="glyphicon glyphicon-earphone"></span> Liên hệ</a></li>
                    <li><a href=""><span class="glyphicon glyphicon-envelope"></span> Góp ý</a></li>
                    <li><a href=""><span class="glyphicon glyphicon-question-sign"></span> Hỏi đáp</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Tài khoản <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="">Đăng nhập</a></li>
                            <li><a href="">Quên mật khẩu</a></li>
                            <li><a href="">Đăng ký thành viên</a></li>
                            <li class="divider"></li>
                            <li><a href="">Đăng xuất</a></li>
                            <li><a href="">Đổi mật khẩu</a></li>
                            <li><a href="">Cập nhật hồ sơ</a></li>
                            <li class="divider"></li>
                            <li><a href="">Đơn hàng</a></li>
                            <li><a href="">Hàng đã mua</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="">English</a></li>
                    <li><a href="">Tiếng Việt</a></li>
                </ul>
			<!--Menu-->
            </div>
        </div>

        <div class="nn-sheet row">

            <article class="col-sm-9">
                <div class="nn-body">
                	<tiles:insertAttribute name="body" />
                </div>
            </article>

            <aside class="col-sm-3">
                <!--CartInfo-->
                <div class="nn-cart">
	                <div class="panel panel-default">
	                    <div class="panel-body">
	                        <img class="col-sm-5" src="static/images/shoppingcart.gif" />
	                        <ul class="col-sm-7">
	                            <li>100 items</li>
	                            <li>$ 56.8</li>
	                            <li><a href="">View Cart</a></li>
	                        </ul>
	                    </div>
	                </div>
                </div>
                <!--/CartInfo-->

                <!--Search-->
                <div class="nn-cart">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="post" action="/Product/Search">
                                <input placeholder="Keywords" name="Keywords" class="form-control" />
                            </form>
                        </div>
                    </div>
                </div>
                <!--/Search-->

                <!--Category-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-th-list"></span>
                        <strong>Chủng loại</strong>
                    </div>

                    <div class="list-group">
                        <a href="#" class="list-group-item">Điện thoại di động</a>
                        <a href="#" class="list-group-item">Máy tính xách tay</a>
                        <a href="#" class="list-group-item">Máy tính để bàn</a>
                        <a href="#" class="list-group-item">Quạt máy</a>
                        <a href="#" class="list-group-item">Tivi</a>
                        <a href="#" class="list-group-item">Tủ lạnh</a>
                    </div>
                </div>
                <!--/Category-->

                <!--Supplier-->
                <div class="panel panel-default">

                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-list-alt"></span>
                        <strong>Nhà cung cấp</strong>
                    </div>

                    <div class="list-group">
                        <a href="#" class="list-group-item">Apple</a>
                        <a href="#" class="list-group-item">Samsung</a>
                        <a href="#" class="list-group-item">Nokia</a>
                        <a href="#" class="list-group-item">GL</a>
                        <a href="#" class="list-group-item">Sony Ericson</a>
                        <a href="#" class="list-group-item">Dell</a>
                        <a href="#" class="list-group-item">Acer</a>
                        <a href="#" class="list-group-item">HP</a>
                        <a href="#" class="list-group-item">Toshiba</a>
                    </div>
                </div>
                <!--/Supplier-->

                <!--Special-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-star-empty"></span>
                        <strong>Hàng đặc biệt</strong>
                    </div>

                    <div class="list-group">
                        <a href="#" class="list-group-item">Hàng bán chạy</a>
                        <a href="#" class="list-group-item">Hàng mới</a>
                        <a href="#" class="list-group-item">Hàng giảm giá</a>
                        <a href="#" class="list-group-item">Hàng đặc biệt</a>
                        <a href="#" class="list-group-item">Hàng xem nhiều</a>
                    </div>
                </div>
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