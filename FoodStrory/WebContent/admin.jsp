<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang Quản trị viên</title>
<%
String user = (String) request.getSession().getAttribute("username");
if (user == null) {
	out.println("<h1>Bạn chưa đăng nhập<h1>");
}else if (user.equals("admin")) {
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="images/favicon.ico">
</head>
<body>
<jsp:include page="HeaderAdmin.jsp"></jsp:include>
	<!-- <nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
			
				<a class="navbar-brand" href="admin.jsp">Quản trị viên</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="./admin.jsp?f=account">Quản lý tài khoản</a></li>
				<li><a href="./admin.jsp?f=order">Đơn Hàng</a></li>
				<li><a href="./admin.jsp?f=product">Sản phẩm</a></li>
				<li><a href="./admin.jsp?f=new">Tin tức</a></li>
				<li><a href="./admin.jsp?f=company">Thương hiệu</a></li>
				<li><a href="./admin.jsp?f=ProductType">Loại thực phẩm</a></li>
			</ul>
			</div>
	</nav> -->
	<div style="border: 1px solid blue">
			<%
				String f = request.getParameter("f");
				//out.print("f: " + f);
				if (f == null) {
					f = "account";
				}
				switch (f) {
				case "account":
			%>
			<jsp:include page="account.jsp"></jsp:include>
			<%
				break;
				case "new":
			%>
			<jsp:include page="News.jsp"></jsp:include>
			<%
				break;
				case "product":
			%>
			<jsp:include page="product.jsp"></jsp:include>
			<%
				break;
				case "order":
			%>
			<jsp:include page="order.jsp"></jsp:include>
			<%
				break;
				case "orderDetail":
			%>
			<jsp:include page="orderDetail.jsp"></jsp:include>
			<%
				break;
				case "EditOrder":
			%>
			<jsp:include page="EditOrder.jsp"></jsp:include>
			<%
				break;
				case "company":
			%>
			<jsp:include page="company.jsp"></jsp:include>
			<%
				break;
				case "EditCompany":
			%>
			<jsp:include page="EditCompany.jsp"></jsp:include>
			<%
				break;
				case "InsertCompany":
			%>
			<jsp:include page="InsertCompany.jsp"></jsp:include>
			<%
				break;
				case "ProductType":
			%>
			<jsp:include page="ProductType.jsp"></jsp:include>
			<%
				break;
				case "InsertProductType":
			%>
			<jsp:include page="InsertProductType.jsp"></jsp:include>
			<%
				break;
				case "EditProductType":
			%>
			<jsp:include page="EditProductType.jsp"></jsp:include>
			<%
				break;
				case "EditAccount":
			%>
			<jsp:include page="EditAccount.jsp"></jsp:include>
			<%
				break;
				case "InsertProduct":
			%>
			<jsp:include page="InsertProduct.jsp"></jsp:include>
			<%
				break;
				case "EditProduct":
			%>
			<jsp:include page="EditProduct.jsp"></jsp:include>
			<%
				break;
				case "InsertNews":
			%>
			<jsp:include page="InsertNews.jsp"></jsp:include>
			<%
				break;
				case "EditNew":
			%>
			<jsp:include page="EditNew.jsp"></jsp:include>
			<%
				break;
				default:
			%>
			<jsp:include page="account.jsp"></jsp:include>

			<%
				}
			%>
		</div>
</body>
<% } else { %>
<h1>Bạn không phải là admin</h1>
<br>
		<a href = "./index.jsp" style="float: right; margin-right: 140px"><input type="button" value="Quay lại"></a>
<% } %>
</html>