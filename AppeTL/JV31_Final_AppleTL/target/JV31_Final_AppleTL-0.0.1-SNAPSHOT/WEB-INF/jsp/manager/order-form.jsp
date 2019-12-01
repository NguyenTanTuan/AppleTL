<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Form</title>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>

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
						<li class="active"><a class="" href="/manager/home"> <i
								class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Order</span>
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
												<li class="nav-item"><a href="<c:url value="/manager/home" />" class="nav-link">Home</a>
												</li>
												<li class="nav-item"><a href="#" class="nav-link">About</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
										<div class="header-right-info">
											<ul class="nav navbar-nav mai-top-nav header-right-menu">
												<li class="nav-item dropdown"><a href="#"
													data-toggle="dropdown" role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i
														class="fa fa-envelope-o adminpro-chat-pro"
														aria-hidden="true"></i><span class="indicator-ms"></span></a>
													<div role="menu"
														class="author-message-top dropdown-menu animated zoomIn">
														<div class="message-single-top">
															<h1>Message</h1>
														</div>
														<ul class="message-menu">
															<li><a href="#">
																	<div class="message-img">
																		<img src="img/contact/1.jpg" alt="">
																	</div>
																	<div class="message-content">
																		<span class="message-date">16 Sept</span>
																		<h2>Advanda Cro</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
														</ul>
													</div></li>
												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i
														class="fa fa-bell-o" aria-hidden="true"></i><span
														class="indicator-nt"></span></a>
													<div role="menu"
														class="notification-author dropdown-menu animated zoomIn">
														<div class="notification-single-top">
															<h1>Notifications</h1>
														</div>
														<ul class="notification-menu">
															<li><a href="#">
																	<div class="notification-icon">
																		<i
																			class="fa fa-check adminpro-checked-pro admin-check-pro"
																			aria-hidden="true"></i>
																	</div>
																	<div class="notification-content">
																		<span class="notification-date">16 Sept</span>
																		<h2>Advanda Cro</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
														</ul>
														<div class="notification-view">
															<a href="#">View All Notification</a>
														</div>
													</div></li>
												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"> <i
														class="fa fa-user adminpro-user-rounded header-riht-inf"
														aria-hidden="true"></i> <span class="admin-name">Advanda
															Cro</span> <i
														class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
												</a>
													<ul role="menu"
														class="dropdown-header-top author-log dropdown-menu animated zoomIn">
														<li><a href="register.html"><span
																class="fa fa-home author-log-ic"></span>Register</a></li>
														<li><a href="#"><span
																class="fa fa-user author-log-ic"></span>My Profile</a></li>
														<li><a href="lock.html"><span
																class="fa fa-diamond author-log-ic"></span> Lock</a></li>
														<li><a href="#"><span
																class="fa fa-cog author-log-ic"></span>Settings</a></li>
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
															<div id="Notes" class="tab-pane fade in active">
																<div class="notes-area-wrap">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-comments-o"></i> Latest News
																		</h2>
																		<p>You have 1 New New.</p>
																	</div>
																	<div class="notes-list-area notes-menu-scrollbar">
																		<ul class="notes-menu-list">
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="img/contact/3.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div id="Projects" class="tab-pane fade">
																<div class="projects-settings-wrap">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-cube"></i> Recent Activity
																		</h2>
																		<p>You have 20 Recent Activity.</p>
																	</div>
																	<div
																		class="project-st-list-area project-st-menu-scrollbar">
																		<ul class="projects-st-menu-list">
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">9 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div id="Settings" class="tab-pane fade">
																<div class="setting-panel-area">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-gears"></i> Settings Panel
																		</h2>
																		<p>You have 20 Settings. 5 not completed.</p>
																	</div>
																	<ul class="setting-panel-list">
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Show notifications</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								class="onoffswitch-checkbox" id="example">
																							<label class="onoffswitch-label" for="example">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Offline users</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								checked="" class="onoffswitch-checkbox"
																								id="example5"> <label
																								class="onoffswitch-label" for="example5">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																	</ul>

																</div>
															</div>
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
											<li><span class="bread-blod">Order </span></li>
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
							<h1>All Form Element</h1>
						</div>
					</div>
					<div class="sparkline12-graph">
						<div class="basic-login-form-ad">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="all-form-element-inner">
										<mvc:form
											action="${pageContext.request.contextPath}/${action}"
											method="post" modelAttribute="newOrder">
											<div class="form-group-inner" style="display: none;">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="id" class="login2 pull-right pull-right-pro">Order
															Id </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="id" name="id" value="${newOrder.id }" type="text"
															class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="orderDate"
															class="login2 pull-right pull-right-pro">OrderDate
														</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="orderDate" name="orderDate"
															value="${newOrder.orderDate }" type="text"
															class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="deliveredDate"
															class="login2 pull-right pull-right-pro">DeliveredDate</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="deliveredDate" name="deliveredDate"
															value="${newOrder.deliveredDate}" type="text"
															class="form-control" />
													</div>
												</div>
											</div>
											<%-- <div class="form-group-inner">
											<div class="row">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
													<label for="orderDetailList.price"
														class="login2 pull-right pull-right-pro">Price</label>
												</div>
												<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
													<input id="orderDetailList.price"
														name="orderDetailList.price"
														value="${order.orderDetailList.price}" type="text"
														class="form-control" />
												</div>
											</div>
										</div>
 --%>



											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="address"
															class="login2 pull-right pull-right-pro">Address</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="address" name="address"
															value="${newOrder.address }" type="text"
															class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="note" class="login2 pull-right pull-right-pro">Note</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="note" name="note" value="${newOrder.note }"
															type="text" class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="status"
															class="login2 pull-right pull-right-pro">Status</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<label style="padding-right: 5px;"
															class="radion-inline custom-control-label"> <input
															class="custom-control-input" type="radio" name="status"
															value="true" ${newOrder.status =='true'?'checked':''}>Enable

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="status" value="false"
															${newOrder.status=='false'?'checked':''	}>Disable

														</label>



													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
													<label for="account.username"
														class="login2 pull-right pull-right-pro">Account
														Name</label>
												</div>
												<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
													<select name="account.id" class="form-control">
														<c:forEach var="a" items="${accounts}">
															<c:if test="${a.id == newOrder.account.id}">
																<option value="${a.id}" selected>${a.username}</option>
															</c:if>
															<c:if test="${a.id != newOrder.account.id}">
																<option value="${a.id}">${a.username}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="form-group-inner">
												<div class="login-btn-inner">
													<div class="row">
														<div class="col-lg-3"></div>
														<div class="col-lg-9">
															<div class="login-horizental cancel-wp pull-left">
																<button class="btn btn-sm btn-primary login-submit-cs"
																	type="submit">Save Change</button>
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