<%@page import="model.etity.Account"%>
<%@page import="model.etity.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Sửa thông tin user</title>
</head>
<body>
	<%
		AccountModel aModel = new AccountModel();
		String username = request.getParameter("username");
		Customer cus = aModel.getDetailAccountByName(username);
		Account acc = aModel.getAccount(cus.getUsername(), cus.getUserpass());
	%>
	<form action="./AccountUpdateAction?id=<%=cus.getId()%>&username=<%=cus.getUsername()%>" method="post">
		<table>
			
			<tr>
				<td>ID</td>
				<td><%out.print(cus.getId()); %></td>
			</tr>
			<tr>
				<td>Tài khoản</td>
				<td><%out.print(cus.getUsername());%></td>
			</tr>
			<tr>
				<td>Họ Tên</td>
				<td><input type="text" name="fullname"
					value="<%=cus.getFullname()%>"></td>
			</tr>
			<tr>
				<td>Địa chỉ</td>
				<td><input type="text" name="address"
					value="<%=cus.getAddress()%>"></td>
			</tr>
			<tr>
				<td>Số điện thoại</td>
				<td><input type="text" name="mobile"
					value="<%=cus.getMobile()%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=cus.getEmail()%>"></td>
			</tr>
			<tr>
				<td><a href="./admin.jsp?f=account"><input type="button"
						value="Trở lại"></a></td>
					<td>	<a href="./changepass.jsp?f=changepass&username=<%=cus.getUsername() %>">
			<input type="button" value="Đổi Mật khẩu"></a> </td>
				<td><input type="submit" name="submit" value="Cập nhật"></td>
			</tr>
		</table>
	</form>
</body>
</html>