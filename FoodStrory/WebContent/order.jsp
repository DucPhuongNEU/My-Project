<%@page import="java.text.DecimalFormat"%>
<%@page import="model.etity.Orders"%>
<%@page import="java.util.List"%>
<%@page import="model.OrdersModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/Admin.css" rel="stylesheet">
</head>
<body>
	<div class="example">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center">Hóa đơn</h1>
				<table class="table">
					<%
						// Khởi tạo đối tượng để định dạng mệnh giá tiền
						DecimalFormat fomat = new DecimalFormat("###,###,###");
					%>
					<thead>
						<tr>
							<th>ID</th>
							<th>Ngày mua</th>
							<th>Ngày nhận</th>
							<th>Người mua</th>
							<th>Địa chỉ</th>
							<th>Email</th>
							<th>Tổng tiền</th>
						</tr>
					</thead>
					<tbody>
						<%
							OrdersModel oModel = new OrdersModel();
							List<Orders> list = oModel.getAllOrder();

							for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td align="center">
								<%
									out.print(list.get(i).getCodeOrder());
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).getDateOrder());
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).getReceivedDate());
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).getFullname());
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).getAddress());
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).getEmail());
								%>
							</td>
							<td><%=fomat.format(list.get(i).getPrice_order())%><%=" VNĐ"%></td>
							<td><a
								href="./admin.jsp?codeOrder=<%=list.get(i).getCodeOrder()%>&f=orderDetail">Chi
									tiết</a></td>
							<td><a
								href="./admin.jsp?codeOrder=<%=list.get(i).getCodeOrder()%>&f=EditOrder"><img
									src="images/icon/edit_icon.png" width="32" height="32""></a></td>
							<td><a
								href="./OrderDeleteAction?codeOrder=<%=list.get(i).getCodeOrder()%>"
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