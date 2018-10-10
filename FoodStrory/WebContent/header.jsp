<%@page import="java.util.Locale"%>
<%@page import="ulti.PropertiesReader"%>
<%@page import="model.ProductModel"%>
<%@page import="accessgoogle.model.Constant"%>
<%@page import="accessgoogle.model.GooglePojo"%>
<%@page import="accessgoogle.model.GoogleUtils"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="ct" uri="WEB-INF/tld1.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="css/backtotop.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<title>header</title>
</head>
<body>
	<header id="header"><!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +84 96 74 73
									598</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i>
									minhhai@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">

					<div class="btn-group pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								Việt Nam <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="./ChangeLanguage?lang=vi">VietNam</a></li>
								<li><a href="./ChangeLanguage?lang=en">English</a></li>
								<%
									PropertiesReader pr = new PropertiesReader();
									pr.setlocale(new Locale("vi", "VN"));
								%>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								VNĐ <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Dollar</a></li>
								<li><a href="#">Pound</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<%
							if (session.getAttribute("username") == null) {
							%>

							<li><a href="login.jsp"><i class="fa fa-lock"></i>
									<ct:resourceBundle>index.login</ct:resourceBundle>/<ct:resourceBundle>index.signup</ct:resourceBundle></a></li>
							<%
							} else if (session.getAttribute("username").equals("admin") == true) {
								%>
							<li><a href="#"> <%session.getAttribute("username").toString(); %>
							</a></li>
							<li><a href="WishList.jsp"><i class="fa fa-star"></i>
									<ct:resourceBundle>index.wishlist</ct:resourceBundle></a></li>
							<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
									<ct:resourceBundle>index.cart</ct:resourceBundle></a></li>
							<li><a href="admin.jsp"><i class="fa fa-user"></i><%=session.getAttribute("username").toString().toUpperCase()%></a></li>
							<li><a href="./LogoutAction" title="đăng xuất"><i
									class="fa fa-sign-out"></i> <ct:resourceBundle>index.logout</ct:resourceBundle> </a></li>
							<%
							} else	{
								%>
							<li><a href="#"> <%session.getAttribute("username").toString(); %>
							</a></li>
							<li><a href="WishList.jsp"><i class="fa fa-star"></i>
									<ct:resourceBundle>index.wishlist</ct:resourceBundle></a></li>
							<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
									<ct:resourceBundle>index.cart</ct:resourceBundle></a></li>
							<li><a
								href="./EditAccGuest.jsp?username=<%=session.getAttribute("username").toString().toUpperCase()%>&f=EditAccGuest"><i
									class="fa fa-user"></i><%=session.getAttribute("username").toString().toUpperCase()%></a></li>
							<li><a href="./LogoutAction" title="Đăng nhập"><i
									class="fa fa-sign-out"></i> <ct:resourceBundle>index.logout</ct:resourceBundle> </a></li>
							<%
							}
								%>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="index.jsp" class="active" title="Trang chủ"><ct:resourceBundle>index.home</ct:resourceBundle></a></li>
							<li class="dropdown"><a href="#" title="Danh Mục"><ct:resourceBundle>index.category</ct:resourceBundle><i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									
									<li><a href="cart.jsp">Cart</a></li>
									<li><a href="login.jsp">Login</a></li>
								</ul></li>
							<li><a href="News.jsp" title="Tin Tức"><ct:resourceBundle>index.news</ct:resourceBundle></a></li>
							<li><a href="contact.jsp" title="Liên Hệ"><ct:resourceBundle>index.contact</ct:resourceBundle></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<form method="get" action="search.jsp">
						<div class="search_box pull-right">
							<input type="text" name="q" id="search" placeholder="Search"
								onkeyup="Search()" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--/header-bottom--> </header>
	<!--/header-->
</body>
</html>