<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lotteria</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

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
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Thể loại</h2>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#sportswear"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> Đồ ăn nhanh
									</a>
								</h4>
							</div>
							<div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li><a href="#">Humberger</a></li>
										<li><a href="#">Pizza </a></li>
										<li><a href="#">Gà rán </a></li>
										<li><a href="#">Xúc xích</a></li>
										<li><a href="#">Bánh mì kẹp </a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#mens">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										Đồ uống
									</a>
								</h4>
							</div>
							<div id="mens" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li><a href="#">Trà sữa </a></li>
										<li><a href="#">Caffe</a></li>
										<li><a href="#">Sinh tố</a></li>
										<li><a href="#">Kool-Aid</a></li>
										<li><a href="#">Chocolate nóng</a></li>
										<li><a href="#">Rượu</a></li>
									</ul>
								</div>
							</div>
						</div>


						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#">Đồ ăn vỉa hè</a>
								</h4>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#">Đồ ăn nước</a>
								</h4>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#">Đồ ăn khô</a>
								</h4>
							</div>
						</div>

					</div>
					<!--/category-products-->

					<div class="brands_products">
						<!--brands_products-->
						<h2>Thương hiệu</h2>
						<div class="brands-name">
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#"> <span class="pull-right">(50)</span>
										McDonald’s
								</a></li>
								<li><a href="#"> <span class="pull-right">(56)</span>KFC
								</a></li>
								<li><a href="#"> <span class="pull-right">(27)</span>Lã
										Vọng
								</a></li>
								<li><a href="#"> <span class="pull-right">(32)</span>Lotteria
								</a></li>
								<li><a href="#"> <span class="pull-right">(5)</span>Pizza
										Hut
								</a></li>
								<li><a href="#"> <span class="pull-right">(9)</span>Burger
										King
								</a></li>
								<li><a href="#"> <span class="pull-right">(4)</span>Soya
										Garden
								</a></li>
							</ul>
						</div>
					</div>
					<!--/brands_products-->
				</div>
			</div>


			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img
								src="https://media.foody.vn/res/g4/35886/prof/s/foody-mobile-6-jpg-957-635786266995666016.jpg"
								alt="Lotteria" />

						</div>


					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<h2>Lotteria</h2>
							<p>Web ID: 1089777</p>
							<img src="images/product-details/rating.png" alt="" /> <span>
								<span>VNĐ 30.000</span> <label>Đánh giá:</label> <input
								type="text" value="4" />
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i> Add to cart
								</button>
							</span>
							<p>
								<b>Tình Trạng:</b> Còn hàng
							</p>
							<p>
								<b>Trạng thái:</b> Mới
							</p>
							<p>
								<b>Thương hiệu:</b> Lotteria
							</p>
							<a href=""><img src="images/product-details/share.png"
								class="share img-responsive" alt="" /></a>
						</div>
						<!--/product-information-->
					</div>
				</div>
				<!--/product-details-->

				<div class="group-tabs">
					<!--category-tab-->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="#details" data-toggle="tab">Chi
								tiết</a></li>
						<li role="presentation"><a href="#companyprofile"
							data-toggle="tab">Thông tin cửa hàng</a></li>
						<li role="presentation"><a href="#tag" data-toggle="tab">Tag</a></li>
						<li role="presentation" class="active"><a href="#reviews"
							data-toggle="tab">Nhận xét (5)</a></li>
					</ul>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane" id="details">
							<span class="heading">User Rating</span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<p>4.1 average based on 254 reviews.</p>
							<hr style="border: 3px solid #f1f1f1">

							<div class="row">
								<div class="side">
									<div>5 star</div>
								</div>
								<div class="middle">
									<div class="bar-container">
										<div class="bar-5"></div>
									</div>
								</div>
								<div class="side right">
									<div>150</div>
								</div>
								<div class="side">
									<div>4 star</div>
								</div>
								<div class="middle">
									<div class="bar-container">
										<div class="bar-4"></div>
									</div>
								</div>
								<div class="side right">
									<div>63</div>
								</div>
								<div class="side">
									<div>3 star</div>
								</div>
								<div class="middle">
									<div class="bar-container">
										<div class="bar-3"></div>
									</div>
								</div>
								<div class="side right">
									<div>15</div>
								</div>
								<div class="side">
									<div>2 star</div>
								</div>
								<div class="middle">
									<div class="bar-container">
										<div class="bar-2"></div>
									</div>
								</div>
								<div class="side right">
									<div>6</div>
								</div>
								<div class="side">
									<div>1 star</div>
								</div>
								<div class="middle">
									<div class="bar-container">
										<div class="bar-1"></div>
									</div>
								</div>
								<div class="side right">
									<div>20</div>
								</div>
							</div>
						</div>

						<div role="tabpanel" class="tab-pane active" id="reviews">
							<div class="col-sm-12">
								<ul>
									<li><a href=""><i class="fa fa-user"></i>ADMIN</a></li>
									<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
									<li><a href=""><i class="fa fa-calendar-o"></i>15 JUL
											2018</a></li>
								</ul>
								<p>Viết nhận xét là cách tốt nhất để phản hồi dịch vụ sử
									dụng của bạn đối với cửa hàng hoặc đọc nhận xét giúp bạn lựa
									chọn cửa hàng tốt hơn.</p>
								<p>
									<b>Viết nhận xét của bạn</b>
								</p>

								<form action="#">
									<span> <input type="text" placeholder="Tên bạn" /> <input
										type="email" placeholder="Địa chỉ email" />
									</span>
									<textarea name=""></textarea>
									<b>Đánh giá: </b>
									<!-- danh gia  -->
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<div class="star-rating">
													<span class="fa fa-star-o" data-rating="1"> Siêu Tệ</span>
													<span class="fa fa-star-o" data-rating="2">Tệ</span> <span
														class="fa fa-star-o" data-rating="3">Trung Bình</span> <span
														class="fa fa-star-o" data-rating="4">Ngon</span> <span
														class="fa fa-star-o" data-rating="5"> Rất Ngon</span> <input
														type="hidden" name="whatever1" class="rating-value"
														value="2.56">
												</div>
											</div>
										</div>
									</div>
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
									<!-- ket thuc danh gia  -->
									<button type="button" class="btn btn-default pull-right">
										Gửi</button>
								</form>
							</div>
						</div>
					</div>




				</div>
			</div>
			<!--/category-tab-->


		</div>
	</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>