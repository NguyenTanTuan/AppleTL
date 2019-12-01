<%-- 
    Document   : login
    Created on : Jun 20, 2019, 8:17:26 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<jsp:include page="../include/header-css.jsp" />
</head>
<body>
	<div class="main-page-banner home-3">
		<jsp:include page="../include/header.jsp" />
		<jsp:include page="../include/menu1.jsp" />
	</div>
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="<c:url value="home"/>">Home</a></li>
					<li><a href="<c:url value="register"/>">account</a></li>
					<li class="active"><a href="contact.html">contact us</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
		<div class="log-in ptb-100 ptb-sm-60">
			<div class="container">
				<div class="row">
					<!-- New Customer Start -->
					<div class="col-md-6">
						<div class="well mb-sm-30">
							<div class="new-customer">
								<h3 class="custom-title">new customer</h3>
								<p class="mtb-10">
									<strong>Register</strong>
								</p>
								<p>By creating an account you will be able to shop faster,
									be up to date on an order's status, and keep track of the
									orders you have previously made</p>
								<a class="customer-btn" href="<c:url value="/register/"/>">continue</a>
							</div>
						</div>
					</div>
					<!-- New Customer End -->
					<!-- Returning Customer Start -->
					<div class="col-md-6">
						<div class="well">
							<div class="return-customer">
								<h3 class="mb-10 custom-title">returnng customer</h3>
								<p class="mb-10">
									<strong>I am a returning customer</strong>
								</p>
								<form action="<c:url value="j_spring_security_check"/>"
									method="post">
									<!--  -->
									<div class="form-group">
										<label>Email</label> <input type="text" name="email"
											placeholder="Enter your email address..." id="input-email"
											class="form-control">
									</div>
									<div class="form-group">
										<label>Password</label> <input type="text" name="pass"
											placeholder="Password" id="input-password"
											class="form-control">
									</div>
									<p class="lost-password">
										<a href="forgot-password.html">Forgot password?</a>
									</p>
									<input type="submit" value="Login" class="return-customer-btn">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />

								</form>
							</div>
						</div>
					</div>
					<!-- Returning Customer End -->
				</div>
				<!-- Row End -->
			</div>
			<!-- Container End -->
		</div>
	</div>
	<!-- LogIn Page End -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footer-script.jsp" />
</body>
</html>
