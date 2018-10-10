<%@page import="model.etity.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.danhmuc {
	border: 1px solid #ccc;
	border-width: 1px 0;
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: center;
}
.danhmuc li{
    display:inline; 
}
.danhmuc a{
    display:inline-block;
    padding:10px;
}
</style>
</head>
<body>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<a><h1 style="text-align: center;"><%=session.getAttribute("username").toString().toUpperCase()%></h1></a>
				</div>
			</div>
		</div><!--/header_top-->
		<div class="header-bottom"><!--header-bottom-->
			<%
							AccountModel aModel = new AccountModel();
							ArrayList<Customer> listCus = aModel.getAllDetailCustomers();
						%>
			<div class="container">
				<div class="row">
					<ul class="danhmuc">
						<li><a href="index.jsp">Trang chủ</a></li>
						<li><a
							href="./EditAccGuest.jsp?username=<%=session.getAttribute("username").toString().toUpperCase()%>&f=EditAccGuest">Quản
								lý tài khoản</a></li>
					</ul>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
</body>
</html>