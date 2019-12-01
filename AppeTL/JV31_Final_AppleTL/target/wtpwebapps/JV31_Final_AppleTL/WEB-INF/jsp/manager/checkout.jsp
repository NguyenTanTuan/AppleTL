<%-- 
    Document   : customer-form
    Created on : Aug 27, 2019, 8:45:39 PM
    Author     : motvo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check out Page</title>
<link rel="stylesheet"
	href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" />
</head>
<body>
	<div class="jumbotron"></div>
	<div class="container">
		<div class="col-sm-6">
			<div class="well">
				<h1>Customer Information</h1>
			</div>
			<div class="well col-sm-12">
				<mvc:form action="${pageContext.request.contextPath}/${action}"
					method="post" modelAttribute="account">
					<div class="form-group-inner" style="display: none;">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="id" class="login2 pull-right pull-right-pro">Account
									ID </label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="id" name="id" value="${account.id }" type="text"
									class="form-control" />
							</div>
						</div>
					</div>
					<br>
					<div class="form-group-inner">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="username" class="login2 pull-right pull-right-pro">Customer
									Name </label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="username" name="username"
									value="${account.username }" type="text" class="form-control"
									required="" />
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="name" class="login2 pull-right pull-right-pro">
									Name </label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="name" name="name"
									value="${account.name }" type="text" class="form-control"
									required="" />
							</div>
						</div>
						<br>

						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="address" class="login2 pull-right pull-right-pro">Address
								</label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="address" name="address" value="${account.address }"
									type="text" class="form-control" required="" />
							</div>
						</div>
						<br>

						<%-- <div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="phone" class="login2 pull-right pull-right-pro">Phone
								</label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="phone" name="phone" value="${account.phone }"
									type="text" class="form-control" required="" />
							</div>
						</div> --%>
					</div>
					<br>
					<div class="form-group-inner">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="gender" class="login2 pull-right pull-right-pro">Gender</label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<label style="padding-right: 5px;"
									class="radion-inline custom-control-label"> <input
									class="custom-control-input" type="radio" name="gender"
									value="MALE" ${account.gender =="MALE"?'checked':''}>MALE

								</label> <label class="radion-inline custom-control-label"> <input
									class="custom-control-input" type="radio" name="gender"
									value="FEMALE" ${account.gender=="FEMALE"?'checked':''	}>FEMALE

								</label>


							</div>
						</div>
					</div>


					<br>

					<%-- <div class="form-group-inner">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<label for="email" class="login2 pull-right pull-right-pro">Email</label>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<input id="email" name="email" value="${account.email }"
									type="email" class="form-control" required="" />
							</div>
						</div>
					</div>
					<br>
 --%>					
					

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
		<div class="col-sm-6">
			<div class="well">
				<h1>CART</h1>
			</div>
			<div class="well">
				<table class="table">
					<thead>
						<tr>

							<th>Image</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>UnitPrice</th>
							<th>Price</th>
						</tr>
					</thead>
					<c:forEach var="orderDetail" items="${newOrder.orderDetailList}">
						<tbody>
							<tr>
								<td><img src="" alt="" /></td>
								<td>${orderDetail.product.productName}</td>
								<td>${orderDetail.quantity}</td>
								<td><fmt:formatNumber value="${orderDetail.unitPrice}"
										pattern="###,###$" type="number" /></td>
								<td id="price${orderDetail.product.id}"><fmt:formatNumber
										value="${orderDetail.price}" pattern="###,###$" type="number" />
								</td>
							</tr>
						</tbody>
					</c:forEach>
					<tr>
						<th style="color: orange;">ToTal</th>
						<td id="totalPrice"><fmt:formatNumber
								value="${newOrder.totalPrice}" pattern="###,###$" /></td>
						<td></td>
					</tr>
				</table>
			</div>

		</div>
</body>
</html>
