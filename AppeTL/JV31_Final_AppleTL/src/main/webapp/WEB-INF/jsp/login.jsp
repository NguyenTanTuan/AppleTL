<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login to Management</title>
</head>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>
<body>
	<div class="color-line"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="back-link back-backend">
					<a href="<c:url value="/home"/>" class="btn btn-primary">Back
						to Home</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
				<div class="text-center m-b-md custom-login">
					<h3>PLEASE LOGIN TO AppleTL</h3>
				</div>
				<div class="hpanel">
					<div class="panel-body">
						<form action="<c:url value="j_spring_security_check"/>"
							method="post" id="loginForm">
							<div class="form-group">
								<label class="control-label" for="username">Username</label> <input
									type="text" title="Please enter you username" required=""
									value="" name="username" id="username" class="form-control">
								<span class="help-block small">Your unique username to
									app</span>
							</div>
							<div class="form-group">
								<label class="control-label" for="password">Password</label> <input
									type="password" title="Please enter your password"
									placeholder="******" required="" value="" name="password"
									id="password" class="form-control">

							</div>
							<button class="btn btn-success btn-block loginbtn">Login</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12 col-md-12 col-sm-12 col-xs-12 text-center">
				<p>
					Copyright &copy; 2018 <a href="https://www.facebook.com/tuandeptrai2101">AppleTL</a>
					All rights reserved.
				</p>
			</div>
		</div>
	</div>

	<jsp:include page="include/footerAdmin-script.jsp"></jsp:include>

</body>
</html>