<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

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



										</span> <i class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
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
												<li class="active"><a data-toggle="tab" href="#Notes">News</a></li>
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
</div>
