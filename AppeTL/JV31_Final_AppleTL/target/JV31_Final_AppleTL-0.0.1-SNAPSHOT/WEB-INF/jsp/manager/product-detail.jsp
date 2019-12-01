<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>

</head>
<body>
	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">

			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class=""
							href="<c:url value="/manager/home"/>"> <i
								class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non" style="color: blue; font-size: 20px;">ProductDetail
							</span>
						</a></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-flask icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Order</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Code Editor"
									href="<c:url value="/manager/list-order"/>"><i
										class="fa fa-code sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">List Order</span></a></li>
								<li><a title="Tree View"
									href="<c:url value="/manager/add-order"/>"><i
										class="fa fa-frown-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">Add Order</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-pie-chart icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Product</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="File Manager"
									href="<c:url value="/manager/list-product"/>"><i
										class="fa fa-folder sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">List Product</span></a></li>

								<li><a title="500 Page"
									href="<c:url value="/manager/add-product"/>"><i
										class="fa fa-tree sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">Add Product</span></a></li>
							</ul></li>
						<li id="removable"><a class="has-arrow" href="#"
							aria-expanded="false"><i
								class="fa big-icon fa-files-o icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Category</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Login"
									href="<c:url value="/manager/list-category"/>"><i
										class="fa fa-hand-rock-o sub-icon-mg" aria-hidden="true"></i><span
										class="mini-sub-pro" style="color: red;">List Category</span></a></li>
								<li><a title="Lock"
									href="<c:url value="/manager/add-category"/>"><i
										class="fa fa-file sub-icon-mg" aria-hidden="true"></i><span
										class="mini-sub-pro" style="color: red;">Add Category</span></a></li>
							</ul></li>

						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-desktop icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Promotion</span></a>
							<ul class="submenu-angle" aria-expanded="false">

								<li><a title="Tabs"
									href="<c:url value="/manager/list-promotion"/>"><i
										class="fa fa-eye sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">List Promotion</span></a></li>
								<li><a title="Accordion"
									href="<c:url value="/manager/add-promotion"/>"><i
										class="fa fa-life-ring sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro" style="color: red;">Add Promotion</span></a></li>
							</ul></li>



					</ul>
				</nav>
			</div>
		</nav>
	</div>

	<div class="all-content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="logo-pro">
						<a href="index.html"><img class="main-logo"
							src="img/logo/logo.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="header-advance-area">
			<div class="header-top-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="header-top-wraper">
								<div class="row">
									<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
										<div class="menu-switcher-pro">
											<button type="button" id="sidebarCollapse"
												class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
												<i class="fa fa-bars"></i>
											</button>
										</div>
									</div>
									<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
										<div class="header-top-menu tabl-d-n">
											<ul class="nav navbar-nav mai-top-nav">
												<li class="nav-item"><a
													href="<c:url value="/manager/home"/>" class="nav-link">Home</a>
												</li>
												<li class="nav-item"><a href="#" class="nav-link">About</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
										<div class="header-right-info">
											<ul class="nav navbar-nav mai-top-nav header-right-menu">

												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"> <i
														class="fa fa-user adminpro-user-rounded header-riht-inf"
														aria-hidden="true"></i> <span class="admin-name"
														style="color: blue; font-size: 22px;"> <security:authorize
																access="isAuthenticated()">
																<security:authentication property="principal.username" />
															</security:authorize>




													</span> <i
														class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
												</a>
													<ul role="menu"
														class="dropdown-header-top author-log dropdown-menu animated zoomIn">

														<li><a href="<c:url value="/logout"/>"><span
																class="fa fa-lock author-log-ic"></span>Log Out</a></li>
													</ul></li>
												<li class="nav-item nav-setting-open"><a href="#"
													data-toggle="dropdown" role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i class="fa fa-tasks"></i></a>

													<div role="menu"
														class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
														<ul class="nav nav-tabs custon-set-tab">
															<li class="active"><a data-toggle="tab"
																href="#Notes">News</a></li>
															<li><a data-toggle="tab" href="#Projects">Activity</a>
															</li>
															<li><a data-toggle="tab" href="#Settings">Settings</a>
															</li>
														</ul>

														<div class="tab-content custom-bdr-nt">

															<div id="Projects" class="tab-pane fade"></div>
															<div id="Settings" class="tab-pane fade"></div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>




			<div class="breadcome-area">
				<div class="container-fluid">
					<div class="row" style="padding-top: 15px;">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
										<div class="breadcome-heading">
											<form role="search" class="">
												<input type="text" placeholder="Search..."
													class="form-control"> <a href=""><i
													class="fa fa-search"></i></a>
											</form>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
										<ul class="breadcome-menu">
											<li><a href="<c:url value="/manager/home"/>">Home</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">Order Details</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single pro tab start-->
		<div class="single-product-tab-area mg-t-15 mg-b-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div id="myTabContent1" class="tab-content">
							<div class="product-tab-list tab-pane fade active in"
								id="single-tab1">
								<img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="" />
							</div>

						</div>
						<ul id="single-product-tab">
							<li class="active"><a href="#single-tab1"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="" /></a></li>
							<li><a href="#single-tab2"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="" /></a></li>
							<li><a href="#single-tab3"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="" /></a></li>
							<li><a href="#single-tab4"><img
									src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
									alt="" /></a></li>
						</ul>
					</div>
					<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
						<div class="single-product-details res-pro-tb">
							<h1 style="font-size: 30px;">${pr.productName}</h1>
							<div class="single-pro-price">
								<span class="single-regular">
								<fmt:formatNumber value="${pr.price }" pattern="$###,###"/>
								</span><span
									class="single-old"><del><!-- $${pr.price*80/100 } --></del></span>
							</div>
							<div class="single-pro-size">
								<h4>Ram</h4>
								<p>
									<c:if test="${pr.ram=='3GB' }">
												3GB
											</c:if>
									<c:if test="${pr.ram=='6GB' }">
												6GB
											</c:if>
									<c:if test="${pr.ram=='8GB' }">
												8GB
											</c:if>
								</p>
							</div>
							<div class="single-pro-size">
								<h4>Rom</h4>
								<p>
									<c:if test="${pr.rom=='128GB' }">
												128GB
											</c:if>
									<c:if test="${pr.rom=='252GB' }">
												252GB
											</c:if>
									<c:if test="${pr.rom=='512GB' }">
												512GB
											</c:if>
								</p>
							</div>
							<div class="color-quality-pro">
								<div class="color-quality-details">
									<h4>Color</h4>
									<c:if test="${pr.productColor=='Black' }">
										<p style="color: black;">Black</p>
									</c:if>
									<c:if test="${pr.productColor=='White' }">
										<p style="color: #F5F5F5;">White</p>
									</c:if>
									<c:if test="${pr.productColor=='Silver' }">
										<p style="color: silver;">Silver</p>
									</c:if>
									<c:if test="${pr.productColor=='SpaceGreen' }">
										<p style="color: #556B2F;">SpaceGreen</p>
									</c:if>
									<c:if test="${pr.productColor=='Rose' }">
										<p style="color: rgb(255, 182, 193);">Rose</p>
									</c:if>
									<c:if test="${pr.productColor=='Gold' }">
									</c:if>
									<c:if test="${pr.productColor=='Red' }">
										<p style="color: red;">Red</p>
									</c:if>
									<c:if test="${pr.productColor=='Gold' }">
										<p style="color: #FFD700;">Gold</p>
									</c:if>


								</div>
								<div class="color-quality">
									<h4>Quality</h4>
									<div class="quantity">
										<div class="pro-quantity-changer">
											<input type="text" value="${pr.quantityInStore }" />
										</div>
									</div>
								</div>
								<div class="clear"></div>
								<div class="single-pro-button">
									<div class="pro-button">
										<a href="<c:url value="/manager/order-product?id=${pr.id }"/>">ADD
											TO Cart</a>
									</div>
								</div>
								<div class="clear"></div>
								<div class="single-social-area">
									<h3>share this on</h3>
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-google-plus"></i></a> <a href="#"><i
										class="fa fa-feed"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
							<div class="single-pro-cn">
								<h2>Description</h2>
								<p style="color: red; font-size: 30px; font-family: fantasy;">${pr.description}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single pro tab End-->
		<!-- Single pro tab review Start-->
		<%-- <div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<ul id="myTab" class="tab-review-design">
							<li class="active"><a href="#description">description</a></li>

						</ul>
						<div id="myTabContent" class="tab-content">
							<div
								class="product-tab-list product-details-ect tab-pane fade active in"
								id="description">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="review-content-section">
											<p
												style="font-size: 30px; color: orange; font-family: monospace;">${pr.description}</p>

										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
 --%>
		<div class="footer-copyright-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer-copy-right">
							<p>
								Copyright &copy; 2018 <a
									href="https://www.facebook.com/tuandeptrai2101">TLAplle</a> All
								rights reserved.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>



		<jsp:include page="include/footerAdmin-script.jsp"></jsp:include>
</body>
</html>