<%@page import="model.etity.Account"%>
<%@page import="model.etity.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trang Quản trị thành viên</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="icon" href="data/img/logo-9.png">
<style type="text/css">
.example {
	margin: 20px;
}
</style>
</head>
<body>
<jsp:include page="headerGuest.jsp"></jsp:include>
<%
		AccountModel aModel = new AccountModel();
		String username = request.getParameter("username");
		Customer cus = aModel.getDetailAccountByName(username);
		Account acc = aModel.getAccount(cus.getUsername(), cus.getUserpass());
	%>
	<div class="example">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center">Tài Khoản</h1>
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Tài khoản</th>
							<th>Mật Khẩu</th>
							<th>Họ Tên</th>
							<th>Địa chỉ</th>
							<th>Số điện thoại</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="center">
								<%
								out.print(cus.getId()); 
								%>
							</td>
							<td>
								<%
								out.print(cus.getUsername());
								%>
							</td>
							<td>
								<%
									out.print(cus.getUserpass());
								%>
							</td>
							<td>
								<%
									out.print(cus.getFullname());
								%>
							</td>
							<td>
								<%
									out.print(cus.getAddress());
								%>
							</td>
							<td>
								<%
									out.print(cus.getMobile());
								%>
							</td>
							<td>
								<%
									out.print(cus.getEmail());
								%>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>
</html>