<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Form</title>
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
								class="mini-click-non"
								style="color: blue; font-size: 21px; font-family: monospace;">Product</span>
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
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row" style="padding-top: 15px;">
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
											<li><span class="bread-blod">Product</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="sparkline12-list">
					<div class="sparkline12-hd">
						<div class="main-sparkline12-hd">
							<h1 style="text-align: center; font-size: 25px; color: red;">Product
								Form</h1>
						</div>
					</div>
					<div class="sparkline12-graph">
						<div class="basic-login-form-ad">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="all-form-element-inner">
										<p style="color: red">${message}</p>

										<mvc:form
											action="${pageContext.request.contextPath}/${action}"
											method="POST" modelAttribute="product"
											enctype="multipart/form-data">
											<div class="form-group-inner" style="display: none;">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="id" class="login2 pull-right pull-right-pro">Product
															ID </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="id" name="id" value="${product.id }"
															type="text" class="form-control" />
													</div>
												</div>
											</div>

											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="productName"
															class="login2 pull-right pull-right-pro">Product
															Name </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="productName" name="productName"
															value="${product.productName }" type="text"
															class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="description"
															class="login2 pull-right pull-right-pro">Description</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="description" name="description"
															value="${product.description}" type="text"
															class="form-control" />
													</div>
												</div>
											</div>



											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="price"
															class="login2 pull-right pull-right-pro">Price</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="price" name="price" value="${product.price }"
															type="text" class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="quantityInStore"
															class="login2 pull-right pull-right-pro">Quantity</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="quantityInStore" name="quantityInStore"
															value="${product.quantityInStore }" type="number"
															class="form-control" />
													</div>
												</div>
											</div>

											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="status"
															class="login2 pull-right pull-right-pro">Status</label>
													</div>
													<div
														class="col-lg-9 col-md-9 col-sm-9 col-xs-12 custom-control custom-radio">

														<label style="padding-right: 5px;"
															class="radion-inline custom-control-label"> <input
															class="custom-control-input" type="radio" name="status"
															value="true" ${product.status =='true'?'checked':''}>Enable

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="status" value="false"
															${product.status=='false'?'checked':''	}>Disable

														</label>



													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="productColor"
															class="login2 pull-right pull-right-pro">Color</label>
													</div>
													<div
														class="col-lg-9 col-md-9 col-sm-9 col-xs-12 custom-control custom-radio">

														<label style="padding-right: 5px;"
															class="radion-inline custom-control-label"> <input
															class="custom-control-input" type="radio"
															name="productColor" value="White"
															${product.productColor =='White'?'checked':''}>White

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="Black"
															${product.productColor=='Black'?'checked':''	}>Black

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="Rose"
															${product.productColor=='Rose'?'checked':''	}>Rose

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="SpaceGreen"
															${product.productColor=='SpaceGreen'?'checked':''	}>SpaceGreen

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="Gold"
															${product.productColor=='Gold'?'checked':''	}>Gold

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="Silver"
															${product.productColor=='Silver'?'checked':''	}>Silver

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="productColor" value="Red"
															${product.productColor=='Red'?'checked':''	}>Red

														</label>



													</div>
												</div>
											</div>
										
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="ram" class="login2 pull-right pull-right-pro">Ram</label>
													</div>
													<div
														class="col-lg-9 col-md-9 col-sm-9 col-xs-12 custom-control custom-radio">



														<label
															class="radion-inline custom-control-label pull-left">
															<input type="checkbox" value="3GB" name="ram"
															${product.ram=='3GB'?'checked':''	}> 3GB
														</label> <label
															class="radion-inline custom-control-label pull-left">
															<input type="checkbox" value="6GB" name="ram"
															${product.ram=='6GB'?'checked':''	}> 6GB
														</label> <label
															class="radion-inline custom-control-label pull-left">
															<input type="checkbox" value="8GB" name="ram"
															${product.ram=='8GB'?'checked':''	}> 8GB
														</label>



													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="rom" class="login2 pull-right pull-right-pro">Rom</label>
													</div>
													<div
														class="col-lg-9 col-md-9 col-sm-9 col-xs-12 custom-control custom-radio">



														<label
															class="radion-inline custom-control-label pull-left">
															<input type="radio" value="128GB" name="rom"
															${product.rom=='128Gb'?'checked':''	}> 128GB
														</label> <label
															class="radion-inline custom-control-label pull-left">
															<input type="radio" value="252GB" name="rom"
															${product.rom=='252GB'?'checked':''	}> 252GB
														</label> <label
															class="radion-inline custom-control-label pull-left">
															<input type="radio" value="512GB" name="rom"
															${product.rom=='512GB'?'checked':''	}> 512GB
														</label>



													</div>
												</div>
											</div>


											<div class="form-group-inner">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
													<label for="category.name"
														class="login2 pull-right pull-right-pro">Cate Name</label>
												</div>
												<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
													<select name="category.id" class="form-control">
														<c:forEach var="c" items="${category}">
															<c:if test="${c.id == product.category.id}">
																<option value="${c.id}" selected>${c.name}</option>
															</c:if>
															<c:if test="${c.id != product.category.id}">
																<option value="${c.id}">${c.name}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>
											<br>
											<br>
											<br>
											



											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="image"
															class="login2 pull-right pull-right-pro">Image</label>
													</div>

													<input id="file-input" checked="checked" type="file"
														multiple="multiple" name="files" />
													<div id="preview"></div>

												</div>
											</div>




											<div class="form-group-inner">
												<div class="login-btn-inner">
													<div class="row">
														<div class="col-lg-3"></div>
														<div class="col-lg-9">
															<div class="login-horizental cancel-wp pull-left">
																<button class="btn btn-sm btn-primary login-submit-cs"
																	type="submit" value="Upload">Save Change</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</mvc:form>

									</div>
								</div>
							</div>
						</div>








					</div>
				</div>
			</div>
		</div>

		<!-- Basic Form End-->
		<script type="text/javascript">
			function previewImages() {

				var preview = document.querySelector('#preview');

				if (this.files) {
					[].forEach.call(this.files, readAndPreview);
				}

				function readAndPreview(file) {

					// Make sure `file.name` matches our extensions criteria
					if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
						return alert(file.name + " is not an image");
					} // else...

					var reader = new FileReader();

					reader.addEventListener("load", function() {
						var image = new Image();
						image.height = 100;
						image.title = file.name;
						image.src = this.result;
						preview.appendChild(image);
					});

					reader.readAsDataURL(file);

				}

			}

			document.querySelector('#file-input').addEventListener("change",
					previewImages);
		</script>
	

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