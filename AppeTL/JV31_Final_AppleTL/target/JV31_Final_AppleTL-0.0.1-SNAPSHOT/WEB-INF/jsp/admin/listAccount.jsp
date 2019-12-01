<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Account List</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn").click(function() {
			$("#a,#b,#c,#d").toggle(1000);
		})
	})
</script>

</head>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>
<body>


	<jsp:include page="include/title.jsp"></jsp:include>



	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
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
														<li><a href="register.html"><span
																class="fa fa-home author-log-ic"></span>Register</a></li>


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
								<div class="row" style="padding-top: 30px;">


									<div class="col-lg-6 col-md-6 col-sm-4 col-xs-4">
										<div class="breadcome-heading">
											<form role="search" class=""
												action="${pageContext.request.contextPath}/admin/search"
												method="post">
												<input name="searchTx" type="text" placeholder="Search..."
													class="form-control"> <a href="" ><i
													class="fa fa-search" ></i></a>
											</form>

										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-4 col-xs-4">
										<ul class="breadcome-menu">
											<li><a href="<c:url value="/admin/home"/>">Home</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">Account List</span></li>
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
					<div class="col-md-3">
						<form role="search" class=""
							action="${pageContext.request.contextPath}/admin/searchByGenderAndAge"
							method="post" style="padding-top: 10px;">
							<select id="a" style="display: none;" class="form-control"
								name="gender">
								<option value="MALE">MALE</option>
								<option value="FEMALE">FEMALE</option>
							</select> <input id="b" style="display: none;" type="number"
								class="form-control" placeholder="Age FROM" name="from">
							<input id="c" style="display: none;" type="number"
								class="form-control" placeholder="TO" name="to">
							<button id="d" style="display: none;" type="submit">Search</button>
							<button id="btn" type="button" class="btn btn-warning">Search
								By Gender And Age</button>
						</form>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap">
							<h2>Account List</h2>
							<div class="add-product">
								<a href="<c:url value="/admin/add-account"/>">Add Account</a>
							</div>
							<div style="text-align: right;">
								<a style="font-size: 19px;"
									href="<c:url value="/admin/downloadCSVaccount"/>">Export
									Account</a>
							</div>


							<table>
								<tr>
									<th>#</th>
									<th >User Name</th>

									<th>Name</th>
									<th>PassWord</th>
									<th>ROLE</th>
									<th>BirthDate</th>
									<th>Gender</th>
									<th>Email</th>
									<th>Country</th>
									<th>Status</th>
									<th>Action</th>

									<th>Setting</th>
								</tr>
								<c:set var="i" value="1" />
								<c:forEach items="${account}" var="a">
									<tr>
										<td>${i}</td>
										<td style="color: orange; font-size: 21px;">${a.username }</td>
										<td>${a.name }</td>
										<td>${a.password }</td>
										<td><c:if test="${a.role=='ROLE_USER'}">
												<p style="color: blue;">ROLE_USER</p>
											</c:if> <c:if test="${a.role=='ROLE_ADMIN'}">
												<p style="color: red;">ROLE_ADMIN</p>
											</c:if> <c:if test="${a.role=='ROLE_MANAGER'}">
												<p style="color: orange;">ROLE_MANAGER</p>
											</c:if> <c:if test="${a.role=='ROLE_SELLER'}">
												<p style="color: purple;">ROLE_SELLER</p>
											</c:if></td>
										<td>${a.birthdate }</td>
										<td><c:if test="${a.gender== 'MALE' }">
												<p
													style="color: olive; font-size: 18px; font-family: inherit;">MALE</p>
											</c:if> <c:if test="${a.gender=='FEMALE' }">
												<p
													style="color: pink; font-size: 18px; font-family: sans-serif;">FEMALE</p>
											</c:if></td>

										<td>${a.email }</td>
										<td>${a.country }</td>
										<td><c:if test="${a.status== true }">
												<p style="color: blue; font-size: 18px;">Enable</p>
											</c:if> <c:if test="${a.status== false }">
												<p style="color: red; font-size: 18px;">Disable</p>

											</c:if></td>
										<td><c:if test="${a.status== true }">
												<a href="<c:url value="/admin/deActive/${a.id}"/>">DeActive</a>
											</c:if> <c:if test="${a.status== false }">
												<a href="<c:url value="/admin/active/${a.id}"/>">Active</a>

											</c:if></td>
										<td>
											<button
												onclick="location.href='<c:url value="/admin/edit-account/${a.id}"/>'"
												data-toggle="tooltip" title="Edit" class="btn btn-primary">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
											</button>
											<button
												onclick="location.href='<c:url value="/admin/delete-account/${a.id}"/>'"
												data-toggle="tooltip" title="Trash" class="btn btn-warning">
												<i class="fa fa-trash-o" aria-hidden="true"></i>
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