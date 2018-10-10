<%@page import="java.text.DecimalFormat"%>
<%@page import="com.sun.net.httpserver.HttpContext"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.etity.Product"%>
<%@page import="model.ProductModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Giỏ Hàng</title>
<link rel="icon" href="images/logo-9.png">
<link rel="shortcut icon" href="images/favicon.ico">

	<link rel="stylesheet" href="./css/bootstrap.min.css">

		<script src="./js/jquery-3.3.1.min.js"></script>

		<script src="./js/bootstrap.min.js"></script>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

	<center>
		<form action="./SaveOrders" method="post">
			<a href="index.jsp"><input type="button" value="Mua thêm"></a>
			<%
				// Khởi tạo đối tượng để định dạng mệnh giá tiền
				DecimalFormat fomat = new DecimalFormat("###,###,###");
			%>
			<table
				class="table table-responsive table-hover table-striped table-condensed">
				<%
					ProductModel pModel = new ProductModel();
					List<Product> dsGioHang = new ArrayList();
					int PriceTotal = 0;
					// Kiểm tra giỏ hàng nếu trrongs 
					if (session.getAttribute("dsGioHang") == null) {

					} else {
						for (int i = 0; i < session.getAttribute("dsGioHang").toString().length(); i++) {
							dsGioHang = (List<Product>) session.getAttribute("dsGioHang");
						}
					}
				%>
				<tr style="background-color: lightblue;">
					<th>Mã Sản phẩm</th>
					<th>Tên Sản phẩm</th>
					<th>Hình ảnh</th>
					<th>Số Lượng</th>
					<th>Giá</th>
					<th>Thao Tác</th>
				</tr>
				<%
					for (int i = 0; i < dsGioHang.size(); i++) {
				%>
				<tr>
					<td>
						<%
							out.print(dsGioHang.get(i).getCodeProduct());
						%>
					</td>
					<td>
						<%
							out.print(dsGioHang.get(i).getNameProduct());
						%>
					</td>
					<td><img
						src="images/product/<%=dsGioHang.get(i).getImage()%>"
						style="width: 50px; height: 50px;"></td>
					<td>
						<%
							out.print(dsGioHang.get(i).getCountbuy());
						%>
					</td>
					<td>
						<%
							out.print(fomat.format(dsGioHang.get(i).getPrice()));
						%><%=" VNĐ"%>
					</td>
					<td><a
						href="./DeleteOneProduct?codeProduct=<%=dsGioHang.get(i).getCodeProduct()%>">Delete</a></td>
				</tr>
				<%
					PriceTotal += dsGioHang.get(i).getCountbuy() * dsGioHang.get(i).getPrice();
					}
				%>
				<tr>
					<td colspan="4" align="right"
						style="font-weight: bold; padding-right: 50px;">Tổng tiền:</td>
					<td colspan="2">
						<%
							out.print(fomat.format(PriceTotal));
						%><%=" VNĐ"%></td>
				</tr>
			</table>
			<input type="submit" value="Đặt hàng"></input>
		</form>
	</center>
	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>