<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
					<li class="active"><a href="<c:url value="/home"/>">WishList</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->



	<!-- Wish List Start -->
	<div class="cart-main-area wish-list ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- Form Start -->
					<form action="#">
						<!-- Table Content Start -->
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-remove">Remove</th>
										<!-- 										<th class="product-thumbnail">Image</th>
 -->
										<th class="product-name">Product Name</th>
										<th class="product-price">Unit Price</th>
										<th class="product-quantity">Stock Status</th>
										<th class="product-subtotal">add to cart</th>
									</tr>
								</thead>
								<c:forEach items="${newProduct }"
									var="pr">
									<tbody>
										<tr>
											<td class="product-remove"><a href="#"><i
													class="fa fa-times" aria-hidden="true"></i></a></td>
											 <td class="product-thumbnail"><a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/products/${pr.images[0].name}"
													alt="cart-image" /></a></td>
											<td class="product-name"><a href="#">${pr.productName }
											</a></td>
											<td class="product-price"><span class="amount"><fmt:formatNumber
														value="${pr.price }" pattern="$###,###" /></span></td>
											<td class="product-stock-status"><span>${pr.status }</span></td>
											<td class="product-add-to-cart"><a href="#">add to
													cart</a></td>
										</tr>

									</tbody>
								</c:forEach>
							</table>
						</div>
						<!-- Table Content Start -->
					</form>
					<!-- Form End -->
				</div>
			</div>
			<!-- Row End -->
		</div>
	</div>
	<!-- Wish List End -->



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