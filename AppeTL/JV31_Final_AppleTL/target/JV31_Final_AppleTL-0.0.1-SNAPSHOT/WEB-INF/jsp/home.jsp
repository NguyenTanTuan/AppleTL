<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AppleTL</title>
<jsp:include page="include/header-css.jsp"></jsp:include>
</head>
<body>
	<div class="main-page-banner home-3"></div>
	<jsp:include page="include/header.jsp" />
	<jsp:include page="include/menu.jsp" />


	<!-- Categorie Menu & Slider Area End Here -->
	<!-- Breadcrumb Start -->
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="<c:url value="/home"/>">Home</a></li>
					<li class="active"><a href="<c:url value="home"/>">Shop</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Shop Page Start -->
	<div class="main-shop-page pt-100 pb-100 ptb-sm-60">
		<div class="container">
			<!-- Row End -->
			<div class="row">
				<!-- Sidebar Shopping Option Start -->
				<div class="col-lg-3 order-2 order-lg-1">
					<div class="sidebar">
						<!-- Sidebar Electronics Categorie Start -->
						<div class="electronics mb-40">
							<h3 class="sidebar-title">Apple Product</h3>
							<div id="shop-cate-toggle"
								class="category-menu sidebar-menu sidbar-style">
								<ul>
									<li class="has-sub"><a href="#">SmartPhone</a>
										<ul class="category-sub">
											<li><a href="shop.html">Iphone11</a></li>
											<li><a href="shop.html">Iphine11 Pro Max</a></li>
											<li><a href="shop.html">IphoneXs</a></li>
											<li><a href="shop.html">IphoneXS max</a></li>
											<li><a href="shop.html">Iphone8</a></li>
											<li><a href="shop.html">Iphone8S Plus</a></li>
											<li><a href="shop.html">Iphone7</a></li>
											<li><a href="shop.html">Iphone7S Plus</a></li>
											<li><a href="shop.html">Iphone6</a></li>
											<li><a href="shop.html">Iphone6S Plus</a></li>
										</ul> <!-- category submenu end--></li>
									<li class="has-sub"><a href="#">MacBook</a>
										<ul class="category-sub">
											<li><a href="shop.html">MacBook Pro</a></li>
											<li><a href="shop.html">MacBook Air</a></li>
											<li><a href="shop.html">TheNew</a></li>
										</ul> <!-- category submenu end--></li>
									<li class="has-sub"><a href="#">Ipad</a>
										<ul class="category-sub">
											<li><a href="shop.html">Ipad mini</a></li>
											<li><a href="shop.html">Ipad Pro</a></li>
										</ul> <!-- category submenu end--></li>
									<li class="has-sub"><a href="#">Phu kien</a>
										<ul class="category-sub">
											<li><a href="shop.html">Cap & Sac</a></li>
											<li><a href="shop.html">Tai nghe</a></li>
											<li><a href="shop.html">op lung</a></li>
										</ul> <!-- category submenu end--></li>

									<li class="has-sub"><a href="#">Mouse</a>
										<ul class="category-sub">
											<li><a href="shop.html">Mouse dung pin</a></li>
											<li><a href="shop.html">Mouse cam truc tiep</a></li>
										</ul> <!-- category submenu end--></li>
									<li class="has-sub"><a href="#">Computer</a>
										<ul class="category-sub">
											<li><a href="shop.html">Mouse dung pin</a></li>
											<li><a href="shop.html">Mouse cam truc tiep</a></li>
										</ul> <!-- category submenu end--></li>
								</ul>
							</div>
							<!-- category-menu-end -->
						</div>
						<!-- Sidebar Electronics Categorie End -->
						<!-- Price Filter Options Start -->
						<div class="search-filter mb-40">
							<h3 class="sidebar-title">filter by price</h3>
							<form action="#" class="sidbar-style">
								<div id="slider-range"></div>
								<input type="text" id="amount" class="amount-range" readonly>
							</form>
						</div>
						<!-- Price Filter Options End -->
						<!-- Product Top Start -->
						<div class="top-new mb-40">
							<h3 class="sidebar-title">Top New</h3>
							<div class="side-product-active owl-carousel">
								<!-- Side Item Start -->
								<div class="side-pro-item">
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/2.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/1.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Iphone 11</a>
											</h4>
											<p>1500</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/20.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/19.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Ipad Mini</a>
											</h4>
											<p>500</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->

									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/3.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/4.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Iphone XR</a>
											</h4>
											<p>$1100</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/15.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/16.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">MacBook Pro 2019</a>
											</h4>
											<p>
												<span class="price">$2500</span>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
								</div>
								<!-- Side Item End -->
								<!-- Side Item Start -->
								<div class="side-pro-item">
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/41.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/42.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Silver Work Lamp Proin</a>
											</h4>
											<p>
												<span class="price">$80.45</span>
												<del class="prev-price">$100.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/36.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/35.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Silver Work Lamp Proin</a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/33.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/34.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Lamp Proin Work Silver </a>
											</h4>
											<p>
												<span class="price">$120.45</span>
												<del class="prev-price">130.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/31.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/32.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Work Lamp Silver Proin</a>
											</h4>
											<p>
												<span class="price">$140.45</span>
												<del class="prev-price">$150.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
								</div>
								<!-- Side Item End -->
								<!-- Side Item Start -->
								<div class="side-pro-item">
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/15.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/16.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Lamp Work Silver Proin</a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/17.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/18.jpg"/>"
												alt="single-product">
											</a>
											<div class="label-product l_sale">
												30<span class="symbol-percent">%</span>
											</div>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Silver Work Lamp Proin</a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/23.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/24.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Proin Work Lamp Silver </a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
									<!-- Single Product Start -->
									<div class="single-product single-product-sidebar">
										<!-- Product Image Start -->
										<div class="pro-img">
											<a href="product.html"> <img class="primary-img"
												src="<c:url value="/resources/img/products/25.jpg"/>"
												alt="single-product"> <img class="secondary-img"
												src="<c:url value="/resources/img/products/26.jpg"/>"
												alt="single-product">
											</a>
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<h4>
												<a href="product.html">Work Lamp Silver Proin</a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
								</div>
								<!-- Side Item End -->
							</div>
						</div>
						<!-- Product Top End -->
						<!-- Single Banner Start -->
						<div class="col-img">
							<a href="shop.html"><img
								src="<c:url value="/resources/img/banner/banner-sidebar.jpg"/>"
								alt="slider-banner"></a>
						</div>
						<!-- Single Banner End -->
					</div>
				</div>
				<!-- Sidebar Shopping Option End -->
				<!-- Product Categorie List Start -->
				<div class="col-lg-9 order-1 order-lg-2">
					<!-- Grid & List View Start -->
					<div
						class="grid-list-top border-default universal-padding d-md-flex justify-content-md-between align-items-center mb-30">
						<div class="grid-list-view  mb-sm-15">
							<ul class="nav tabs-area d-flex align-items-center">
								<li><a class="active" data-toggle="tab" href="#grid-view"><i
										class="fa fa-th"></i></a></li>
								<li><a data-toggle="tab" href="#list-view"><i
										class="fa fa-list-ul"></i></a></li>
							</ul>
						</div>
						<!-- Toolbar Short Area Start -->
						<!-- <div class="main-toolbar-sorter clearfix">
							<div class="toolbar-sorter d-flex align-items-center">
								<label>Sort By:</label> <select class="sorter wide">
									<option value="Position">Relevance</option>
									<option value="Product Name">Neme, A to Z</option>
									<option value="Product Name">Neme, Z to A</option>
									<option value="Price">Price low to heigh</option>
									<option value="Price" selected>Price heigh to low</option>
								</select>
							</div>
						</div>
 -->
					</div>
					<!-- Grid & List View End -->
					<div class="main-categorie mb-all-40">
						<div class="tab-content fix">
							<div id="grid-view" class="tab-pane fade show active">
								<div class="row">
									<c:forEach var="pr" items="${product}">
										<div class="col-lg-4 col-md-4 col-sm-6 col-6">
											<div class="single-product">
												<!-- Product Image Start -->
												<div class="pro-img">
													<a href="<c:url value="/product-detail/${pr.id}"/>"> <img
														class="primary-img"
														src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
														alt="single-product"> <img class="secondary-img"
														src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
														alt="single-product">
													</a> <a href="#" class="quick_view" data-toggle="modal"
														data-target="#myModal" title="Quick View"><i
														class="lnr lnr-magnifier"></i></a>
												</div>
												<!-- Product Image End -->
												<!-- Product Content Start -->
												<div class="pro-content">
													<div class="pro-info">
														<h4>
															<a href="<c:url value="/product-detail/${pr.id}"/>">${pr.productName }</a>
														</h4>
														<p>
															<span class="price"><fmt:formatNumber
																	value="${pr.price }" pattern="$###,###" /></span>
														</p>
														<div class="label-product l_sale">
															<span class="symbol-percent"></span>
														</div>
													</div>
													<div class="pro-actions">
														<div class="actions-primary">
															<a href="<c:url value="/order-product?id=${pr.id }"/>"
																title="Add to Cart"> + Add To Cart</a>
														</div>
														<div class="actions-secondary">
															<a
																href="<c:url value="/compareProductbyCategory/${pr.category.id }"/>"
																title="Compare"><i class="lnr lnr-sync"></i> <span>Add
																	To Compare</span></a> <a
																href="<c:url value="/add-wishlist?id=${pr.id }"/>"
																title="WishList"><i class="lnr lnr-heart"></i> <span>Add
																	to WishList</span></a>
														</div>
													</div>
												</div>
												<!-- Product Content End -->
											</div>
										</div>
									</c:forEach>
									<!-- Single Product End -->
								</div>
								<!-- #list view End -->
								<div class="pro-pagination">
									<ul class="blog-pagination">
										<c:forEach begin="1" end="${totalPage}" var="i">
											<li class="active"><a
												href="<c:url value="/list/${i-1}"/>">${i}</a></li>
										</c:forEach>
									</ul>
								</div>
								<!-- Product Pagination Info -->
							</div>
							<!-- Grid & List Main Area End -->
						</div>
					</div>
					<!-- product Categorie List End -->
				</div>
				<!-- Row End -->
			</div>
			<!-- Container End -->
		</div>
		<!-- Shop Page End -->
		<!-- Support Area Start Here -->
		<div class="support-area bdr-top">
			<div class="container">
				<div class="d-flex flex-wrap text-center">
					<div class="single-support">
						<div class="support-icon">
							<i class="lnr lnr-gift"></i>
						</div>
						<div class="support-desc">
							<h6>Great Value</h6>
							<span>Nunc id ante quis tellus faucibus dictum in eget.</span>
						</div>
					</div>
					<div class="single-support">
						<div class="support-icon">
							<i class="lnr lnr-rocket"></i>
						</div>
						<div class="support-desc">
							<h6>Worlwide Delivery</h6>
							<span>Quisque posuere enim augue, in rhoncus diam dictum
								non</span>
						</div>
					</div>
					<div class="single-support">
						<div class="support-icon">
							<i class="lnr lnr-lock"></i>
						</div>
						<div class="support-desc">
							<h6>Safe Payment</h6>
							<span>Duis suscipit elit sem, sed mattis tellus accumsan.</span>
						</div>
					</div>
					<div class="single-support">
						<div class="support-icon">
							<i class="lnr lnr-enter-down"></i>
						</div>
						<div class="support-desc">
							<h6>Shop Confidence</h6>
							<span>Faucibus dictum suscipit eget metus. Duis elit sem,
								sed.</span>
						</div>
					</div>
					<div class="single-support">
						<div class="support-icon">
							<i class="lnr lnr-users"></i>
						</div>
						<div class="support-desc">
							<h6>24/7 Help Center</h6>
							<span>Quisque posuere enim augue, in rhoncus diam dictum
								non.</span>
						</div>
					</div>
				</div>
			</div>
			<!-- Container End -->
			<jsp:include page="include/footer.jsp" />
			<jsp:include page="include/footer-script.jsp"></jsp:include>

		</div>
</body>
</html>