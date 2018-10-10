<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>cập nhật mật khẩu</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="headerGuest.jsp"></jsp:include>
<%
		String username = request.getParameter("username");
	%>
	<div class="row">
	<div class="col-sm-3">
	</div>
	<div class="col-sm-5">
	
<form action="./AccountEditPassAction?username=<%=username %>"
	method="post">
	<div class="form-group">
		<label>Mật khẩu cũ</label> <input type="password" name="passOld"
			class="form-control">
	</div>
	<div class="form-group">
		<label>Mật khẩu mới:</label> <input type="password" name="passNew"
			class="form-control">
	</div>


	<a href="./admin.jsp?f=account"><input type="button"
		value="Trở lại"></a> <input type="submit" name="submit"
		value="Cập nhật">
</form>
</div>
	<div class="col-sm-3">
	</div>
	</div>
</body>
</html>
