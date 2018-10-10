
<%@page import="model.etity.ProductType"%>
<%@page import="java.util.List"%>
<%@page import="model.ProductTypeModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loại sản phẩm</title>
<link href="css/Admin.css" rel="stylesheet">
</head>
<body>
	<%
		ProductTypeModel pdModel = new ProductTypeModel();
		List<ProductType> list = pdModel.getAllProductType();
		
	%>
	<div class="example">
		<div class="container">
			<div class="row">
	<h1 style="text-align: center">Loại thực phẩm</h1>
	<a href ="./admin.jsp?f=InsertProductType"><h3 style="text-align: center">Thêm loại thực phẩm</h3></a>
	<table class="table">
	<thead>
		<tr align ="center">
			<th>Mã loại thực phẩm</th>
			<th>Tên loại thực phẩm</th>
		</tr>
		</thead>
		<tbody>
		<%
			for(int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><%=list.get(i).getCodeSP() %></td>
			<td><%=list.get(i).getNameSP() %></td>
			<td><a href ="./admin.jsp?codeSP=<%=list.get(i).getCodeSP()%>&f=EditProductType"><img src="images/icon/edit_icon.png" width="32" height="32""></a></td>
				<td><a href ="./ProductTypeAction?action=delete&codeSP=<%=list.get(i).getCodeSP()%>" onclick="return confirmDelete()"><img src="images/icon/delete_icon.png" width="32" height="32"></a></td>
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