<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="model.etity.ProductType"%>
<%@page import="model.etity.Product"%>
<%@page import="model.ProductModel"%>
<%@page import="model.ProductTypeModel"%>
<%@page import="model.CompanyModel"%>
<%@page import="model.etity.Company"%>

<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Chi tiết sản phẩm</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.ico">
   
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Thể loại</h2>
					<%
						ProductTypeModel ptModel = new ProductTypeModel();
						List<ProductType> List = ptModel.getAllProductType();
						for (ProductType productType : List) {
					%>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="./index.jsp?codeSP=<%=productType.getCodeSP()%>"><%=productType.getNameSP()%></a>
								</h4>
							</div>
						</div>

					</div>
					<!--/category-products-->
					<%
						}
					%>
					<div class="brands_products">
						<!--brands_products-->
						<h2>Thương hiệu</h2>
					<%
						CompanyModel cModel = new CompanyModel();
						List<Company> cList = cModel.getAllCompany();
						for (Company company : cList) {
					%>
					<div class="brands-name">
						<!--category-productsr-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="./index.jsp?codeSP=<%=company.getCodeCompany()%>"><%=company.getNameCompany()%></a>
								</h4>
							</div>
						</div>

					</div>
					<!--/category-products-->
					<%
						}
					%>
						</div>
					</div>
					</div>
				
				
				<div class="col-sm-9 padding-right">
				<%
							int codeProduct = Integer.parseInt(request.getParameter("codeProduct"));
										ProductModel productModel = new ProductModel();
										Product product = productModel.getProductById(codeProduct);
						%>
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="images\product\<%=product.getImage()%>">
								
							</div>
						

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><%= product.getNameProduct() %></h2>
								<p>Web ID: 1089772</p>
								<img src="images/product-details/rating.png" alt="" />
								<span>
									<span>VNĐ <%= product.getPrice() %></span> <label>Đánh giá:</label> <input
								type="text" value="4" />
									<a
										href="./BuyProduct?codeProduct=<%=product.getCodeProduct()%>"
										class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
							</span>
								<p><b>Tình Trạng:</b> Còn hàng</p>
								<p><b>Trạng thái:</b> Mới</p>
						
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Chi tiết</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Thông tin cửa hàng</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Nhận xét (5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
								
							</div>
							
							</div>
							
							
							
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>ADMIN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>15 JUL 2018</a></li>
									</ul>
									<p>Viết nhận xét là cách tốt nhất để phản hồi dịch vụ sử dụng của bạn đối với cửa hàng hoặc đọc nhận xét giúp bạn lựa chọn cửa hàng tốt hơn.</p>
									<p><b>Viết nhận xét của bạn</b></p>
									
									<form action="#">
										<span>
											<input type="text" placeholder="Tên bạn"/>
											<input type="email" placeholder="Địa chỉ email"/>
										</span>
										<textarea name="" ></textarea>
										<b>Đánh giá: </b> 
										<img src="images/product-details/rating.png" alt="" />
									<script type="text/javascript">
										
										var star_rating = $('.star-rating .fa');
										var SetRatingStar = function() {
											return star_rating.each(function() {
														if (parseInt(star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
															return $(this).removeClass('fa-star-o').addClass('fa-star');
														} else {
															return $(this).removeClass('fa-star').addClass('fa-star-o');
														}
													});
										};

										star_rating.on('click', function() {
											star_rating.siblings('input.rating-value').val(
													$(this).data('rating'));
											return SetRatingStar();
										});

									</script>
										<button type="button" class="btn btn-default pull-right">
											Gửi
										</button>
									</form>
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
					
					
					
				</div>
			</div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>