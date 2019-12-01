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
<title>Account Form</title>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="include/title.jsp"></jsp:include>

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
													href="<c:url value="/admin/home"/>" class="nav-link">Home</a>
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
											<li><a href="<c:url value="/admin/home"/>">Home</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">Admin </span></li>
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
							<h1 style="color: red; font-size: 25px; text-align: center;">Account
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
											method="post" modelAttribute="account"
											enctype="multipart/form-data">
											<div class="form-group-inner" style="display: none;">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="id" class="login2 pull-right pull-right-pro">Account
															ID </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="id" name="id" value="${account.id }"
															type="text" class="form-control" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="username"
															class="login2 pull-right pull-right-pro">User
															Name </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="username" name="username"
															value="${account.username }" type="text"
															class="form-control" required=""
															placeholder="Enter UserName" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="name" class="login2 pull-right pull-right-pro">
															Name </label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="name" name="name" value="${account.name }"
															type="text" class="form-control" required=""
															placeholder="Name" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="password"
															class="login2 pull-right pull-right-pro">Password
														</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="password" name="password"
															value="${account.password }" type="text"
															class="form-control" required="" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="birthdate"
															class="login2 pull-right pull-right-pro">BirthDate</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="birthdate" name="birthdate"
															value="${account.birthdate}" type="date"
															class="form-control" required="" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="gender"
															class="login2 pull-right pull-right-pro">Gender</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<label style="padding-right: 5px;"
															class="radion-inline custom-control-label"> <input
															class="custom-control-input" type="radio" name="gender"
															value="MALE" ${account.gender =="MALE"?'checked':''}>MALE

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="gender" value="FEMALE"
															${account.gender=="FEMALE"?'checked':''	}>FEMALE

														</label>


													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="role" class="login2 pull-right pull-right-pro">Role</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<label style="padding-right: 5px;"
															class="radion-inline custom-control-label"> <input
															class="custom-control-input" type="radio" name="role"
															value="ROLE_USER"
															${account.role =="ROLE_USER"?'checked':''}>ROLE_USER

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="role" value="ROLE_ADMIN"
															${account.role=="ROLE_ADMIN"?'checked':''	}>ROLE_ADMIN

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="role" value="ROLE_MANAGER"
															${account.role=="ROLE_MANAGER"?'checked':''	}>ROLE_MANAGER

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="role" value="ROLE_SELLER"
															${account.role=="ROLE_SELLER"?'checked':''	}>ROLE_SELLER

														</label>


													</div>
												</div>
											</div>



											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label for="email"
															class="login2 pull-right pull-right-pro">Email</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<input id="email" name="email" value="${account.email }"
															type="email" class="form-control" required="" />
													</div>
												</div>
											</div>
											<div class="form-group-inner">
												<div class="row">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
														<label class="login2 pull-right pull-right-pro">Country</label>
													</div>
													<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
														<div class="form-select-list">
															<select class="form-control custom-select-value"
																name="country">
																<c:forEach var="country" items="${countries}">
																	<label class="radio-inline">
																		<option value="${country}">${country}</option>
																	</label>

																</c:forEach>

															</select>
														</div>
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
															value="true" ${account.status =='true'?'checked':''}>Enable

														</label> <label class="radion-inline custom-control-label">
															<input class="custom-control-input" type="radio"
															name="status" value="false"
															${account.status=='false'?'checked':'' 	}>Disable

														</label>



													</div>
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