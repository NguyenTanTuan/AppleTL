<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="include/header-css.jsp" />

<title>AppleTL</title>
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
					<li><a href="index.html">Home</a></li>
					<li class="active"><a href="#">Compare Product</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->

	<!-- Compare Page Start -->
	<div class="compare-product ptb-100 ptb-sm-60">
		<div class="container">
			<div class="table-responsive-sm">
				<table class="table text-center compare-content">
					<tr>
						<td class="product-title">Product</td>
						<td class="product-title">Description</td>
						<td class="product-title">Price</td>
						<td class="product-title">Color</td>
						<td class="product-title">Add to cart</td>


					</tr>
					<c:forEach begin="1" end="3" var="pr" items="${product }">
						<tr>
							<td class="product-description">
								<div class="compare-details">
									<div class="compare-detail-img">
										<a href="#"><img
											src="<c:url value="/resources/img/products/${pr.images[0].name}"/>"
											alt="compare-product"></a>
									</div>
									<span>${pr.category.name }</span>
									<h4>
										<a href="product.html">${pr.productName}</a>
									</h4>
								</div>
							</td>
							<td class="product-description">
								<p>${pr.description }</p>
							</td>
							<td class="product-description"><fmt:formatNumber
									value="${pr.price }" pattern="$###,###" /></td>
							<td class="product-description"><c:if
									test="${pr.productColor=='Black' }">
									<p style="color: black;">Black</p>
								</c:if> <c:if test="${pr.productColor=='White' }">
									<p style="color: #F5F5F5;">White</p>
								</c:if> <c:if test="${pr.productColor=='Silver' }">
									<p style="color: silver;">Silver</p>
								</c:if> <c:if test="${pr.productColor=='SpaceGreen' }">
									<p style="color: #556B2F;">SpaceGreen</p>
								</c:if> <c:if test="${pr.productColor=='Rose' }">
									<p style="color: rgb(255, 182, 193);">Rose</p>
								</c:if> <c:if test="${pr.productColor=='Gold' }">
								</c:if> <c:if test="${pr.productColor=='Red' }">
									<p style="color: red;">Red</p>
								</c:if> <c:if test="${pr.productColor=='Gold' }">
									<p style="color: #FFD700;">Gold</p>
								</c:if></td>
							<td class="product-description"><a
								class="compare-cart text-uppercase"
								href="<c:url value="/order-product?id=${pr.id }"/>"> + add to
									cart</a></td>




						</tr>
					</c:forEach>





				</table>
			</div>
		</div>
	</div>
	<!-- Compare Page End -->


	<jsp:include page="include/footer.jsp" />
	<jsp:include page="include/footer-script.jsp" />


</body>
</html>