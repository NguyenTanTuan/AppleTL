<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<!-- Breadcrumb Start -->
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="<c:url value="/home"/>">Home</a></li>
					<li class="active"><a>Cart</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->


	<!-- Cart Main Area Start -->
	<div class="cart-main-area ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<!-- Form Start -->
					<form action="#">
						<!-- Table Content Start -->
						<div class="table-content table-responsive mb-45">
							<table>
								<thead>
									<tr>
										<!-- 										<th class="product-thumbnail">Image</th>
 -->
										<th style="color: red; font-size: 18px;" class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">Total</th>
										<th class="product-remove">Remove</th>
									</tr>
								</thead>
								<tbody>
									<c:set value="1" var="i" />
									<c:forEach var="orderDetail"
										items="${newOrder.orderDetailList}">
										<tr>
											<!-- <td class="product-thumbnail"><a href="#"><img
													src="img/products/13.jpg" alt="cart-image" /></a></td>
 -->
											<td style="color: red; font-size: 18px;" class="product-name">${orderDetail.product.productName}<a
												href="#"></a></td>
											<td class="product-price"><span class="amount"> <fmt:formatNumber
														pattern="###,###$" type="number"
														value="${orderDetail.unitPrice}" />
											</span></td>
											<td class="product-quantity"><input type="number"
												value="${orderDetail.quantity}"
												id="quantity${orderDetail.product.id}"
												oninput="myFunction(${orderDetail.product.id})" min="1"></td>
											<td class="product-subtotal"
												id="price${orderDetail.product.id}"><fmt:formatNumber
													pattern="###,###$" type="number"
													value="${orderDetail.price}" /></td>
											<td class="product-remove"><a
												href="<c:url value="/deleteCart?id=${orderDetail.product.id }"/>"><i
													class="fa fa-times" aria-hidden="true"></i></a></td>
										</tr>
										<c:set value="${i+1 }" var="i" />
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- Table Content Start -->
						<div class="row">
							<!-- Cart Button Start -->
							<div class="col-md-8 col-sm-12">
								<div class="buttons-cart">
									<a style="background-color: olive;"
										href="<c:url value="/moreOrder"/>">Continue Shopping</a>
								</div>
							</div>
							<!-- Cart Button Start -->
							<!-- Cart Totals Start -->
							<div class="col-md-4 col-sm-12">
								<div class="cart_totals float-md-right text-md-right">
									<h2>Cart Totals</h2>
									<br />
									<table class="float-md-right">
										<tbody>
											<%-- <tr class="cart-subtotal">
												<th>Subtotal</th>
												<td><span class="amount"><fmt:formatNumber
															pattern="###,###$" type="number"
															value="${newOrder.totalPrice}" /></span></td>
											</tr> --%>
											<tr class="order-total">
												<th>Total</th>
												<td id="total"><strong><span class="amount"><fmt:formatNumber
																pattern="###,###$" type="number"
																value="${newOrder.totalPrice}" /></span></strong></td>
											</tr>
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="<c:url value="/check-out"/>">Proceed to Checkout</a>
									</div>
								</div>
							</div>
							<!-- Cart Totals End -->
						</div>
						<!-- Row End -->
					</form>
					<!-- Form End -->
				</div>
			</div>
			<!-- Row End -->
		</div>
	</div>
	<!-- Cart Main Area End -->
	<div class="ajax2"></div>
	<script>
		function myFunction(id) {
			var x = document.getElementById("quantity" + id).value;
			var xhttp;
			/*  var xhttp= new XHttpRequest();  */
			xhttp = new XMLHttpRequest();

			xhttp.open("GET", "getajax?id=" + id + "&quantity=" + x, true);
			xhttp.send();

			xhttp.onreadystatechange = function() {
				if (this.readyState === 4 && this.status === 200) {
					var data = JSON.parse(this.responseText);
					document.getElementById("price" + id).innerHTML = data[0]
							+ ".0";
					document.getElementById("total").innerHTML = data[1] + ".0";
				}
			};
		}
	</script>
	<p id="demo"></p>


	<jsp:include page="include/footer.jsp" />
	<jsp:include page="include/footer-script.jsp" />

</body>
</html>