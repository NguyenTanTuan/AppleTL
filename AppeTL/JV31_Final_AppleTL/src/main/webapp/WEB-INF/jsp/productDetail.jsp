<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AppleTL</title>
<jsp:include page="include/header-css.jsp" />

</head>
<body>
	<div class="main-page-banner home-3">
		<jsp:include page="include/header.jsp" />
		<jsp:include page="include/menu1.jsp" />
	</div>
	<!-- Breadcrumb Start -->
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="<c:url value="/home"/>">Home</a></li>
					<li><a href="<c:url value="/home"/>">Shop</a></li>
					<li class="active"><a href="product.html">Products</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Product Thumbnail Start -->
	<div class="main-product-thumbnail ptb-100 ptb-sm-60">
		<div class="container">
			<div class="thumb-bg">
				<div class="row">
					<!-- Main Thumbnail Image Start -->
					<div class="col-lg-5 mb-all-40">
						<!-- Thumbnail Large Image start -->
						<div class="tab-content">
							<div id="thumb1" class="tab-pane fade show active">
								<a data-fancybox="images" href="img/products/35.jpg"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-view"></a>
							</div>
							<div id="thumb2" class="tab-pane fade">
								<a data-fancybox="images" href="img/products/13.jpg"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-view"></a>
							</div>
							<div id="thumb3" class="tab-pane fade">
								<a data-fancybox="images" href="img/products/15.jpg"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-view"></a>
							</div>
							<div id="thumb4" class="tab-pane fade">
								<a data-fancybox="images" href="img/products/4.jpg"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-view"></a>
							</div>
							<div id="thumb5" class="tab-pane fade">
								<a data-fancybox="images" href="img/products/5.jpg"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-view"></a>
							</div>
						</div>
						<!-- Thumbnail Large Image End -->
						<!-- Thumbnail Image End -->
						<div class="product-thumbnail mt-15">
							<div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
								<a class="active" data-toggle="tab" href="#thumb1"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-thumbnail"></a> <a data-toggle="tab"
									href="#thumb2"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-thumbnail"></a> <a data-toggle="tab"
									href="#thumb3"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-thumbnail"></a> <a data-toggle="tab"
									href="#thumb4"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-thumbnail"></a> <a data-toggle="tab"
									href="#thumb5"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="product-thumbnail"></a>
							</div>
						</div>
						<!-- Thumbnail image end -->
					</div>
					<!-- Main Thumbnail Image End -->
					<!-- Thumbnail Description Start -->
					<div class="col-lg-7">
						<div class="thubnail-desc fix">
							<h3 class="product-header">${pr.productName}</h3>

							<div class="pro-price mtb-30">
								<p class="d-flex align-items-center">
									<span class="prev-price"> <fmt:formatNumber
											value="${pr.price }" pattern="$###,###" />
									</span> <span class="price"> <fmt:formatNumber
											pattern="$###,###" value="${pr.price}" />
									</span>
								</p>
							</div>
							<p class="mb-20 pro-desc-details">${pr.description }</p>
							<div class="product-size mb-20 clearfix">
								<label>RAM</label> <select class="">
									<option>${pr.ram}</option>
								</select>
							</div>
							<div class="product-size mb-20 clearfix">
								<label>ROM</label> <select class="">
									<option>${pr.rom}</option>
								</select>
							</div>
							<div class="color clearfix mb-20">
								<label>color</label>
								<ul class="color-list">
									<li><a class="orange active" href="#"></a></li>
									<li><a class="paste" href="#"></a></li>
								</ul>
							</div>
							<div class="box-quantity d-flex hot-product2">
								<form action="#">
									<input class="quantity mr-15" type="number" min="1"
										value="${pr.quantityInStore }">
								</form>
								<div class="pro-actions">
									<div class="actions-primary">
										<a href="<c:url value="/order-product?id=${pr.id}"/>" title=""
											data-original-title="Add to Cart"> + Add To Cart</a>
									</div>
									<div class="actions-secondary">
										<a href="compare.html" title="Compare"><i
											class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
											href="wishlist.html" title="WishList"><i
											class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
									</div>

								</div>
							</div>
							<div class="pro-ref mt-20">
								<p>
									<span class="in-stock"><i class="ion-checkmark-round"></i>
										IN STOCK</span>
								</p>
							</div>
							<div class="socila-sharing mt-25">
								<ul class="d-flex">
									<li>share</li>
									<li><a href="#"><i class="fa fa-facebook"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-official"
											aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-p"
											aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Thumbnail Description End -->
				</div>
				<!-- Row End -->
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Product Thumbnail End -->
	<!-- Realted Products Start Here -->
	<div
		class="hot-deal-products off-white-bg pt-100 pb-90 pt-sm-60 pb-sm-50">
		<div class="container">
			<!-- Product Title Start -->
			<div class="post-title pb-30">
				<h2>Realted Products</h2>
			</div>
			<!-- Product Title End -->
			<!-- Hot Deal Product Activation Start -->
			<div class="hot-deal-active owl-carousel">
				<!-- Single Product Start -->
				<c:forEach items="${product}" var="pr" begin="0" end="7">
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
									<a href="<c:url value="/product-detail/${pr.id}"/>">${pr.productName}</a>
								</h4>
								<p>
									<span class="price"> <fmt:formatNumber
											value="${pr.price }" pattern="$###,###" />
									</span>
								</p>
							</div>
							<div class="pro-actions">
								<div class="actions-primary">
									<a href="<c:url value="/order-product?id=${pr.id}"/>"
										title="Add to Cart"> + Add To Cart</a>
								</div>
								<div class="actions-secondary">
									<a href="<c:url value="/compareProductbyCategory/${pr.category.id }"/>" title="Compare"><i
										class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
										href="wishlist.html" title="WishList"><i
										class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
								</div>
							</div>
						</div>
						<!-- Product Content End -->
						<span class="sticker-new">new</span>
					</div>
				</c:forEach>
				<!-- Single Product End -->



			</div>
			<!-- Hot Deal Product Active End -->

		</div>
		<!-- Container End -->
	</div>
	<!-- Realated Products End Here -->
	<jsp:include page="include/footer.jsp" />
	<jsp:include page="include/footer-script.jsp" />

</body>
</html>