<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Tin Tức</title>
<link rel="shortcut icon" href="images/favicon.ico">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
			<!--features_items-->
		<div class="row">
			<div class="col-sm-4">
				<div class="item-box">
					<img
						style="max-height: 300px;"
						src="images/news/9 mẹo vặt giúp người nội trợ nấu ngon hơn.jpg"
						alt="" /> <br> <a href="New1.jsp">Cùng tham khảo 9 mẹo
						vặt nhỏ giúp người nội trợ nấu ăn ngon hơn trong bài viết dưới đây</a>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="item-box">
					<img
						style="max-height: 300px;"
						src="images/news/mẹo.jpg" alt="" /> <br> <a href="#">11
						mẹo vặt hữu ích được "học lỏm" từ các đầu bếp nhà hàng</a>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="item-box">
					<img
						style="max-height: 300px;"
						src="images/news/ngộ độc thực phẩm.jpg" alt="" /> <br> <a
						href="#">Ngộ độc thực phẩm xảy ra chủ yếu do nguồn thực phẩm
						không đảm bảo an toàn, ăn uống ngoài đường, vỉa hè </a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>