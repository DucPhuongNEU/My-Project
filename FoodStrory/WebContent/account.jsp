<%@page import="model.etity.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trang Quản trị thành viên</title>
<link rel="icon" href="data/img/logo-9.png">
<link href="css/Admin.css" rel="stylesheet">
<style type="text/css">
.example {
	margin: 20px;
}
</style>
</head>
<body>
	<div class="example">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center">Tài Khoản</h1>
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Tài khoản</th>
							<th>Họ Tên</th>
							<th>Địa chỉ</th>
							<th>Số điện thoại</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						<%
							AccountModel aModel = new AccountModel();
							ArrayList<Customer> listCus = aModel.getAllDetailCustomers();

							for (int i = 0; i < listCus.size(); i++) {
						%>
						<tr>
							<td align="center">
								<%
									out.print(listCus.get(i).getId());
								%>
							</td>
							<td>
								<%
									out.print(listCus.get(i).getUsername());
								%>
							</td>
							<td>
								<%
									out.print(listCus.get(i).getFullname());
								%>
							</td>
							<td>
								<%
									out.print(listCus.get(i).getAddress());
								%>
							</td>
							<td>
								<%
									out.print(listCus.get(i).getMobile());
								%>
							</td>
							<td>
								<%
									out.print(listCus.get(i).getEmail());
								%>
							</td>
							<td><a
								href="./admin.jsp?username=<%=listCus.get(i).getUsername()%>&f=EditAccount"><img
									src="images/icon/edit_icon.png" width="32" height="32""></a></td>
							<td><a
								href="./AccountDeleteAction?id=<%=listCus.get(i).getId()%>"
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