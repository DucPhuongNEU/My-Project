<%@page import="model.etity.Company"%>
<%@page import="java.util.List"%>
<%@page import="model.CompanyModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
<link href="css/Admin.css" rel="stylesheet">
</head>
<body>
	<%
		CompanyModel cModel = new CompanyModel();
		List<Company> ListCom = cModel.getAllCompany();
	%>
	<div class="example">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center">Thương Hiệu</h1>
				<a href="./admin.jsp?f=InsertCompany"><h3 style="text-align: center">Thêm thương hiệu</h3></a>
				<table class="table">
					<thead>
						<tr align="center">
							<th>STT</th>
							<th>Mã thương hiệu</th>
							<th>Tên thương hiệu</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (int i = 0; i < ListCom.size(); i++) {
						%>
						<tr>
							<td><%=i + 1%></td>
							<td><%=ListCom.get(i).getCodeCompany()%></td>
							<td><%=ListCom.get(i).getNameCompany()%></td>
							<td><a
								href="./admin.jsp?codeCompany=<%=ListCom.get(i).getCodeCompany()%>&f=EditCompany"><img
									src="images/icon/edit_icon.png" width="32" height="32""></a></td>
							<td><a
								href="./CompanyAction?action=delete&codeCompany=<%=ListCom.get(i).getCodeCompany()%>"
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