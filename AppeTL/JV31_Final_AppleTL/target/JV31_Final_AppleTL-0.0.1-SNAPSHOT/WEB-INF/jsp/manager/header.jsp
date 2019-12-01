<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
</head>
<body>
	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<a href="index.html"><img class="main-logo"
					src="<c:url value="/resources/imgAdmin/logo/logo.png"/>" alt="" /></a>
				<strong><img
					src="<c:url value="/resources/imgAdmin/logo/logosn.png"/>" alt="" /></strong>
			</div>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class=""
							href="<c:url value="/manager/home"/>"> <i
								class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non" style="color: blue; font-size: 21px;">Manager</span>
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


		</div>
</body>

