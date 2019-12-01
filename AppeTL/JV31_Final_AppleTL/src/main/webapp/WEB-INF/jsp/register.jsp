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
					<li class="active"><a href="<c:url value="/register/"/>">Register</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Register Account Start -->
	<div class="register-account ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="register-title">
						<h3 class="mb-10">REGISTER ACCOUNT</h3>
						<p class="mb-10">If you already have an account with us,
							please login at the login page.</p>
					</div>
				</div>
			</div>
			<!-- Row End -->
			<div class="row">
				<div class="col-sm-12">
					<mvc:form name="form_register"
						action="${pageContext.request.contextPath }/${action }"
						method="post" modelAttribute="account">
						<fieldset>
							<legend>Your Personal Details</legend>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="f-name"><span
									class="require">*</span>User Name</label>
								<div class="col-md-10">
									<input name="username" type="text" class="form-control"
										id="f-name" placeholder="UserName"
										value="${account.username }">
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="l-name"><span
									class="require">*</span>Full Name</label>
								<div class="col-md-10">
									<input name="name" type="text" class="form-control" id="l-name"
										placeholder="FullName" value="${account.name}">
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="l-name"><span
									class="require">*</span>Address</label>
								<div class="col-md-10">
									<input name="address" type="text" class="form-control"
										id="l-name" placeholder="Address" value="${account.address }">
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="email"><span
									class="require">*</span>Enter you email</label>
								<div class="col-md-10">
									<input name="email" type="email" class="form-control"
										id="email" placeholder="Enter you email address here..."
										value="${account.email }">
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="number"><span
									class="require">*</span>Telephone</label>
								<div class="col-md-10">
									<input name="phone" type="text" class="form-control"
										id="number" placeholder="Telephone" value="${account.phone }">
								</div>
							</div>
						</fieldset>
						<fieldset>
							<legend>Your Password</legend>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="pwd"><span
									class="require">*</span>Password:</label>
								<div class="col-md-10">
									<input name="password" type="password" class="form-control"
										id="pwd" placeholder="Password" value="${account.password }">
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="pwd-confirm"><span
									class="require">*</span>Confirm Password</label>
								<div class="col-md-10">
									<input name="passwordconfirm" type="password"
										class="form-control" id="pwd-confirm"
										placeholder="Confirm password" value="${account.password }">
								</div>
							</div>
						</fieldset>

						<div class="terms">
							<div class="float-md-right">
								<input type="submit" value="Submit" class="return-customer-btn">



							</div>
						</div>
					</mvc:form>


				</div>
			</div>
			<!-- Row End -->
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