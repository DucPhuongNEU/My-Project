<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.danhmuc {
	border: 1px solid #ccc;
	border-width: 1px 0;
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: center;
}
.danhmuc li{
    display:inline; 
}
.danhmuc a{
    display:inline-block;
    padding:10px;
}
</style>
</head>
<body>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<a href="admin.jsp"><h1 style="text-align: center;">Quản trị viên</h1></a>
				</div>
			</div>
		</div><!--/header_top-->
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<ul class="danhmuc">
						<li><a href="index.jsp">Trang chủ</a></li>
						<li><a href="./admin.jsp?f=account">Quản lý tài khoản</a></li>
						<li><a href="./admin.jsp?f=order">Đơn Hàng</a></li>
						<li><a href="./admin.jsp?f=product">Sản phẩm</a></li>
						<li><a href="./admin.jsp?f=company">Thương hiệu</a></li>
						<li><a href="./admin.jsp?f=ProductType">Loại thực phẩm</a></li>
					</ul>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
</body>
</html>