<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!-- favicon
		============================================ -->
</head>
<!--/head-->
<body>

	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<a href="index.html"><img class="main-logo"
					src="<c:url value="/resources/imgAdmin/logo/${p.image }"/>" alt="" /></a>
				<strong><img
					src="<c:url value="/resources/imgAdmin/logo/logosn.png"/>" alt="" /></strong>
			</div>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class=""
							href="<c:url value="/admin/home"/>"> <i
								class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non" style="color: red; font-size: 21px;">Admin</span>
						</a></li>
						<li><a class="" href="<c:url value="/manager/home"/>"
							aria-expanded="false"><i
								class="fa big-icon fa-pie-chart icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;"> Manager</span></a></li>
						<li id="removable"><a class="has-arrow" href="#"
							aria-expanded="false"><i
								class="fa big-icon fa-files-o icon-wrap"></i> <span
								class="mini-click-non" style="color: blue;">Account</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Login"
									href="<c:url value="/admin/listAccount"/>"><i
										class="fa fa-hand-rock-o sub-icon-mg" aria-hidden="true"></i><span
										class="mini-sub-pro" style="color: red;">List Account</span></a></li>
								<li><a title="Lock"
									href="<c:url value="/admin/add-account"/>"><i
										class="fa fa-file sub-icon-mg" aria-hidden="true"></i><span
										class="mini-sub-pro" style="color: red;">Add Account</span></a></li>
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
			<jsp:include page="include/header-top.jsp"></jsp:include>
</body>

