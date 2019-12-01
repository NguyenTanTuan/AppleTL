<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AppleTL</title>
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
					<li class="active"><a>Checkout</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>

	<!-- checkout-area start -->
	<div class="checkout-area pb-100 pt-15 pb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="checkbox-form mb-sm-40">
						<h3 style="text-align: center; color: red;">Customer
							Information</h3>
						<mvc:form action="${pageContext.request.contextPath}/${action}"
							method="post" modelAttribute="account">
							<div class="row">
								<div class="col-md-12">
									<div class="checkout-form-list mb-sm-30">
										<label for="name"> Name <span class="required">*</span></label>
										<input type="text" name="username" id="name"
											value="${account.username }" placeholder="Enter your Name" />
									</div>
								</div>

								<div class="col-md-12">
									<div class="checkout-form-list">
										<label for="address">Address <span class="required">*</span></label>
										<input type="text" name="address" id="address"
											placeholder="Street address" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list mb-30">
										<label for="email">Email Address <span
											class="required">*</span></label> <input type="email" name="email"
											id="email" value="${account.email }" placeholder="" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list mb-30">
										<label for="phone">Phone <span class="required">*</span></label>
										<input type="text" id="phone" name="phone"
											value="${account.phone }" placeholder="..." />
									</div>
								</div>

								<div class="col-md-12" style="text-align: center;">
									<button class="btn btn-danger">Save Order</button>
								</div>
							</div>
						</mvc:form>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="your-order">
						<h3 style="color: red;">Your order</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Product</th>
										<th class="product-name">Quantity</th>
										<th class="product-total">Total</th>
									</tr>
								</thead>
								<c:forEach var="orderDetail" items="${newOrder.orderDetailList}">

									<tbody>
										<tr class="cart_item">
											<td class="product-name"><span class="product-quantity">${orderDetail.product.productName}
											</span></td>
											<td class="product-name"><span class="product-quantity">
													${orderDetail.quantity}</span></td>
											<td class="product-total"><span class="amount"><fmt:formatNumber
														value="${orderDetail.price}" pattern="$###,###"
														type="number" /></span></td>
										</tr>

									</tbody>
								</c:forEach>

								<tfoot>
									<tr class="order-total">
										<th style="color: red;">Order Total</th>
										<td><span class=" total amount"><fmt:formatNumber
													value="${newOrder.totalPrice}" pattern="$###,###" /></span></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- checkout-area end -->
	<jsp:include page="include/footer.jsp" />
	<jsp:include page="include/footer-script.jsp" />

</body>
</html>