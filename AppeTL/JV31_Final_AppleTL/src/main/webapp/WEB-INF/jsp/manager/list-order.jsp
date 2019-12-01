<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>AppleTL</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn").click(function() {
			$("#a,#b,#c").toggle("slow");
		})
	})
</script>
</head>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>
<body>

	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class=""
							href="<c:url value="/manager/home"/>"> <i
								class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non"
								style="color: blue; font-size: 21px; font-family: monospace;">AppleTL</span>
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
	<!-- Start Welcome area -->
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
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row" style="padding-top: 25px;">
									<div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
										<div class="breadcome-heading">
											<form role="search" class="" method="post"
												action="${pageContext.request.contextPath }/manager/searchOrder">
												<input name="searchTx" type="text" placeholder="Search..."
													class="form-control"> <a href=""><i
													class="fa fa-search"></i></a>
											</form>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
										<ul class="breadcome-menu">
											<li><a href="<c:url value="/manager/home"/>">Home</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">Order List</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="product-status mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" style="text-align: center; color: red;">
						<h1>${message}</h1>

					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<form role="search"
							action="${pageContext.request.contextPath}/manager/searchOrderByDate"
							method="post" style="padding-top: 10px;">
							<input id="a" style="display: none;" type="text"
								class="form-control" placeholder="Order FROM" name="from">
							<input id="b" type="text" style="display: none;"
								class="form-control" placeholder="Order TO" name="to">
							<button type="submit" id="c" style="display: none;">
								Search</button>
							<button id="btn" type="button" class="btn btn-warning">Search
								By OrderDate</button>
						</form>

					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap">
							<h2>Order List</h2>
							<div class="add-product">
								<a href="<c:url value="/manager/add-order"/>">Add Order</a>
							</div>
							<div style="text-align: right;">
								<a style="font-size: 25px;"
									href="<c:url value="/manager/downloadCSVorder"/>">Export
									Order</a><br>
							</div>


							<table>
								<tr>
									<th>ID</th>
									<th>Account name</th>
									<th>Gender</th>
									<th>Address</th>
									<th>Phone</th>
									<th>Order Date</th>
									<th>Deli Date</th>
									<th>Total Price</th>
									<th>Setting</th>
								</tr>
								<c:set value="1" var="i" />
								<c:forEach items="${newOrder}" var="o">
									<tr>
										<td>${o.id}</td>
										<td style="color: red; font-size: 23px;">${o.account.username}</td>
										<td><c:if test="${o.account.gender== 'MALE' }">
												<p
													style="color: blue; font-size: 18px; font-family: inherit;">MALE</p>
											</c:if> <c:if test="${o.account.gender=='FEMALE' }">
												<p
													style="color: pink; font-size: 18px; font-family: inherit;">FEMALE</p>
											</c:if></td>
										<td style="color: maroon; font-size: 21px;">${o.account.address}</td>
										<td style="color: maroon; font-size: 21px;">${o.account.phone}</td>
										<td style="color: maroon; font-size: 21px;">${o.orderDate}</td>
										<td style="color: maroon; font-size: 21px;">${o.deliveredDate}</td>
										<td style="color: orange; font-size: 21px;"><fmt:formatNumber
												value="${o.totalPrice}" pattern="###,###$" /></td>
										<td>
											 <button
												onclick="location.href='<c:url value="/manager/delete-order/${o.id}"/>'"
												data-toggle="tooltip" title="Trash" class="btn btn-warning">
												<i class="fa fa-trash-o" aria-hidden="true"></i>
											</button>
 
											<button
												onclick="location.href='<c:url value="/manager/order-detail/${o.id}"/>'"
												data-toggle="tooltip" title="Order Detail"
												class="btn btn-danger">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
											</button>

										</td>
									</tr>
									<c:set value="${i+1 }" var="i" />
								</c:forEach>


							</table>
							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
	</div>
	<jsp:include page="include/footerAdmin-script.jsp"></jsp:include>
</body>
</html>