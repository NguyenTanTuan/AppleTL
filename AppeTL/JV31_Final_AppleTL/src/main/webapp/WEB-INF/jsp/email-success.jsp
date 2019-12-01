<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<jsp:include page="include/header-css.jsp" />

</head>
<body>
	<div class="main-page-banner home-3">
		<jsp:include page="include/header.jsp" />
		<jsp:include page="include/menu1.jsp" />
	</div>
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="<c:url value="/home/"/>">Home</a></li>
					<li class="active"><a href="<c:url value="/home"/>">Thanks</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Error 404 Area Start -->
	<div class="error404-area ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="error-wrapper text-center">
						<div class="error-text">
							<h2>Order Successful! Congratuation!</h2>
							<h3> Check Your Email</h3>
						</div>
						
						
						<div class="error-button">
							<a href="<c:url value="/home"/>">Back to home page</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Error 404 Area End -->




	<div class="row">
		<div class="col-sm-12">
			<div class="signup-form">
				<!--sign up form-->
			</div>
			<!--/sign up form-->
		</div>
	</div>
	</div>
	</div>
	<!-- Container End -->
	</div>
	<!-- Register Account End -->
	<jsp:include page="include/footer.jsp" />
	<jsp:include page="include/footer-script.jsp" />

</body>
</html>