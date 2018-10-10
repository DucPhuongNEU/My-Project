<%@page import="model.etity.ProductType"%>
<%@page import="java.util.Locale"%>
<%@page import="ulti.PropertiesReader"%>
<%@page import="java.text.DecimalFormat"%>


<%@page import="model.etity.News"%>
<%@page import="model.NewsModel"%>
<%@page import="model.ProductModel"%>
<%@page import="model.ProductTypeModel"%>
<%@page import="model.etity.Product"%>
<%@page import="model.etity.Company"%>
<%@page import="model.CompanyModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>content</title>
</head>
<body>
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
									<a href="./index.jsp?codeCompany=<%=company.getCodeCompany()%>"><%=company.getNameCompany()%></a>
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
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Sản phẩm</h2>
					<%
						// Khởi tạo đối tượng để định dạng mệnh giá tiền
						DecimalFormat fomat = new DecimalFormat("###,###,###");
						ProductModel productModel = new ProductModel();
						List<Product> dsSanPham = productModel.getProduct();
						String q = (String) request.getParameter("q");
						if (q != null) {
							dsSanPham = productModel.findByKeyWord(q);
						} else {
							String codeSP = (String) request.getParameter("codeSP");
							if (codeSP != null) {
								dsSanPham = productModel.getProductByType(codeSP);
							} else {
								String codeCompany = (String) request.getParameter("codeCompany");
								if(codeCompany != null){
									dsSanPham = productModel.getProductByCompany(codeCompany);
								}else {
									dsSanPham = productModel.getProduct();
								}
							}
						}
						int cout = 1;
						for (Product product : dsSanPham) {
							if (cout == 1) {
					%>
					<div class="row">
						<%
							}
						%>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images\product\<%=product.getImage()%>">
										<h2><%=fomat.format(product.getPrice())%><%=" VNĐ"%></h2>
										<p><%=product.getNameProduct()%></p>
										<a
											href="./BuyProduct?codeProduct=<%=product.getCodeProduct()%>"
											class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><%=fomat.format(product.getPrice())%><%=" VNĐ"%></h2>
											<p><%=product.getNameProduct()%></p>
											<a
												href="./BuyProduct?codeProduct=<%=product.getCodeProduct()%>"
												class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a 
											href="./WishListProduct?codeProduct=<%=product.getCodeProduct()%>"><i
												class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a
											href="detail.jsp?codeProduct=<%=product.getCodeProduct()%>"
											title="<%=product.getNameProduct()%>"><i
												class="fa fa-plus-square"></i>Product-detail</a></li>
									</ul>
								</div>
							</div>
						</div>
						<%
							if (cout == 4) {
						%>
					</div>

					<%
						}
							cout++;
						}
					%>
				</div>
				<!--features_items-->

				<!--/category-tab-->

			</div>
		</div>
	</div>
	</section>
</body>
</html>
