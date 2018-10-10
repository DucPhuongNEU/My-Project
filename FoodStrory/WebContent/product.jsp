<%@page import="model.etity.Product"%>
<%@page import="model.ProductModel"%>
<%@page import="model.etity.Customer"%>
<%@page import="java.util.List"%>
<%@page import="model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trang Quản trị viên</title>
<link rel="icon" href="data/img/logo-9.png">
<link href="css/Admin.css" rel="stylesheet">
</head>
<body>
	<div class="example">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center">Sản phẩm</h1>
				<a href="admin.jsp?f=InsertProduct"><h3 style="text-align: center">Thêm sản phẩm</h3></a>
				<table class="table">
					<thead>
						<tr align="center">
							<th>Mã sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Giá tiền</th>
							<th>Số lượng dư</th>
							<th>Hình ảnh</th>
							<th>Mã loại sản phẩm</th>
							<th>Mã hãng sản suất</th>
						</tr>
					</thead>
					<tbody>
						<%
							ProductModel pModel = new ProductModel();
							List<Product> listpro = pModel.getProduct();

							for (int i = 0; i < listpro.size(); i++) {
						%>
						<tr align="center">
							<td>
								<%
									out.print(listpro.get(i).getCodeProduct());
								%>
							</td>
							<td align="left">
								<%
									out.print(listpro.get(i).getNameProduct());
								%>
							</td>
							<td>
								<%
									out.print(listpro.get(i).getPrice());
								%>
							</td>
							<td>
								<%
									out.print(listpro.get(i).getNumberOfpro());
								%>
							</td>
							<td><img src="images\product\<%=listpro.get(i).getImage()%>"
								width="30" height="30"></td>
							<td>
								<%
									out.print(listpro.get(i).getCodeSP());
								%>
							</td>
							<td>
								<%
									out.print(listpro.get(i).getCodeCompany());
								%>
							</td>
							<td><a
								href="./admin.jsp?f=EditProduct&codeProduct=<%=listpro.get(i).getCodeProduct()%>"><img
									src="images/icon/edit_icon.png" width="32" height="32"></a></td>
							<td><a
								href="./ProductAction?action=delete&codeProduct=<%=listpro.get(i).getCodeProduct()%>"
								onclick="return confirmDelete()"><img
									src="images/icon/delete_icon.png" width="32" height="32"></a></td>
						</tr>
						<%
				}
			%>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>