<%@page import="java.text.DecimalFormat"%>
<%@page import="com.sun.net.httpserver.HttpContext"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.etity.Product"%>
<%@page import="model.ProductWishModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WishList</title>
<link rel="shortcut icon" href="images/favicon.ico">

	<link rel="stylesheet" href="./js/bootstrap.min.css">

		<script src="./js/jquery-3.3.1.min.js"></script>

		<script src="./js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<center>
		<form action="./SaveWish" method="post">
			<%
				// Khởi tạo đối tượng để định dạng mệnh giá tiền
				DecimalFormat fomat = new DecimalFormat("###,###,###");
			%>
			<table
				class="table table-responsive table-hover table-striped table-condensed">
				<%
					ProductWishModel pModel = new ProductWishModel();
					List<Product> dsYeuThich = new ArrayList();
					int PriceTotal = 0;
					// Kiểm tra giỏ hàng nếu trrongs 
					if (session.getAttribute("dsYeuThich") == null) {

					} else {
						for (int i = 0; i < session.getAttribute("dsYeuThich").toString().length(); i++) {
							dsYeuThich = (List<Product>) session.getAttribute("dsYeuThich");
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
					for (int i = 0; i < dsYeuThich.size(); i++) {
				%>
				<tr>
					<td>
						<%
							out.print(dsYeuThich.get(i).getCodeProduct());
						%>
					</td>
					<td>
						<%
							out.print(dsYeuThich.get(i).getNameProduct());
						%>
					</td>
					<td><img src="images/product/<%=dsYeuThich.get(i).getImage()%>"
						style="width: 50px; height: 50px;"></td>
					<td>
						<%
							out.print(dsYeuThich.get(i).getCountbuy());
						%>
					</td>
					<td>
						<%
							out.print(fomat.format(dsYeuThich.get(i).getPrice()));
						%><%=" VNĐ"%>
					</td>
					<td><a
						href="./DeleteOneProduct?codeProduct=<%=dsYeuThich.get(i).getCodeProduct()%>">Delete</a>
						<br></br> <a
						href="./BuyProduct?codeProduct=<%=dsYeuThich.get(i).getCodeProduct()%>">
							Add To Car </a></td>
				</tr>
				<%
					PriceTotal += dsYeuThich.get(i).getCountbuy() * dsYeuThich.get(i).getPrice();
					}
				%>
			</table>
			<input type="submit" value="OK"></input>
		</form>
	</center>
	<br></br>
	<br></br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>