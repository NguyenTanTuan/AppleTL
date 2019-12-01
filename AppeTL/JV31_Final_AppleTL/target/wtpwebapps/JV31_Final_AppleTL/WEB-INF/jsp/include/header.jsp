<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<div class="popup_banner">
	<span class="popup_off_banner">x</span>
	<div class="banner_popup_area">
		<img src="<c:url value="/resources/img/banner/pop-banner.jpg"/>"
			alt="">
	</div>
</div>
<!-- Banner Popup End -->
<!-- Newsletter Popup Start -->
<div class="popup_wrapper">
	<div class="test">
		<span class="popup_off">Close</span>
		<div class="subscribe_area text-center mt-60">
			<h2>Newsletter</h2>
			<p>Subscribe to the Truemart mailing list to receive updates on
				new arrivals, special offers and other discount information.</p>
			<div class="subscribe-form-group">
				<form action="#">
					<input autocomplete="off" type="text" name="message" id="message"
						placeholder="Enter your email address">
					<button type="submit">subscribe</button>
				</form>
			</div>
			<div class="subscribe-bottom mt-15">
				<input type="checkbox" id="newsletter-permission"> <label
					for="newsletter-permission">Don't show this popup again</label>
			</div>
		</div>
	</div>
</div>
<div class="header-top-area">
	<div class="container">
		<!-- Header Top Start -->
		<div class="header-top">
			<ul>
				<li><a href="#">Free Shipping on order over $99</a></li>
				<li><a href="#">Shopping Cart</a></li>
				<li><a href="<c:url value="/checkout"/>">Checkout</a></li>
			</ul>
			<ul>
				<li><span>Language</span> <a href="#">English<i
						class="lnr lnr-chevron-down"></i></a> <!-- Dropdown Start -->
					<ul class="ht-dropdown">
						<li><a href="#"><img
								src="<c:url value="/resources/img/header/1.jpg"/>"
								alt="language-selector">English</a></li>
						<li><a href="#"><img
								src="<c:url value="/resources/img/header/2.jpg"/>"
								alt="language-selector">Francis</a></li>
					</ul> <!-- Dropdown End --></li>
				<li><span>Currency</span><a href="#"> USD $ <i
						class="lnr lnr-chevron-down"></i></a> <!-- Dropdown Start -->
					<ul class="ht-dropdown">
						<li><a href="#">&#36; USD</a></li>
						<li><a href="#"> &#36; Euro</a></li>
						<li><a href="#">&#163; Pound Sterling</a></li>
					</ul> <!-- Dropdown End --></li>
				<li><a href="#">My Account<i class="lnr lnr-chevron-down"></i></a>
					<!-- Dropdown Start -->
					<ul class="ht-dropdown">
						<li><a href="<c:url value="login"/>">Login</a></li>
						<li><a href="<c:url value="/add-account"/>">Register</a></li>
						<li><a href="<c:url value="/logout"/>">LogOut</a></li>
					</ul> <!-- Dropdown End --></li>
			</ul>
		</div>
		<!-- Header Top End -->
	</div>
	<!-- Container End -->
</div>
<!-- Header Top End Here -->
<!-- Header Middle Start Here -->
<div class="header-middle ptb-15">
	<div class="container">
		<div class="row align-items-center no-gutters">
			<div class="col-lg-3 col-md-12">
				<div class="logo mb-all-30">
					<a href="<c:url value="/home"/>"><img
						src="<c:url value="/resources/img/logo/AppleTL.jpg"/>"
						height="80px;" width="100%" alt="logo-image"></a>
				</div>
			</div>
			<!-- Categorie Search Box Start Here -->
			<div class="col-lg-5 col-md-8 ml-auto mr-auto col-10">
				<div class="categorie-search-box">
					<form action="${pageContext.request.contextPath}/searchProduct"
						method="post">
						<div class="form-group">
							<select class="bootstrap-select" name="poscats"
								onchange="location=this.value;">
								<c:if test="${category!=null || fn:length(category)>0 }">
									<c:forEach var="c" items="${category}">

										<option
											value="<c:url value="/findProductByCategory/${c.id}"/>">${c.name}</option>
									</c:forEach>
								</c:if>
							</select>
						</div>
						<input type="text" name="searchTx"
							placeholder="I'm shopping for...">
						<button>
							<i class="lnr lnr-magnifier"></i>
						</button>
					</form>
				</div>
			</div>
			<!-- Categorie Search Box End Here -->
			<!-- Cart Box Start Here -->
			<div class="col-lg-4 col-md-12">
				<div class="cart-box mt-all-30">
					<ul
						class="d-flex justify-content-lg-end justify-content-center align-items-center">
						<li><a href="#"><i class="lnr lnr-cart"></i><span
								class="my-cart"><span class="total-pro">2</span><span>cart</span></span></a>
							<ul class="ht-dropdown cart-box-width">
								<li>
									<!-- Cart Box Start -->
									<div class="single-cart-box">
										<div class="cart-img">
											<a href="#"><img
												src="<c:url value="/resources/img/products/1.jpg"/>"
												alt="cart-image"></a> <span class="pro-quantity">1X</span>
										</div>
										<div class="cart-content">
											<h6>
												<a href="product.html">Printed Summer Red </a>
											</h6>
											<span class="cart-price">27.45</span> <span>Size: S</span> <span>Color:
												Yellow</span>
										</div>
										<a class="del-icone" href="#"><i class="ion-close"></i></a>
									</div> <!-- Cart Box End --> <!-- Cart Box Start -->
									<div class="single-cart-box">
										<div class="cart-img">
											<a href="#"><img
												src="<c:url value="/resources/img/products/2.jpg"/>"
												alt="cart-image"></a> <span class="pro-quantity">1X</span>
										</div>
										<div class="cart-content">
											<h6>
												<a href="product.html">Printed Round Neck</a>
											</h6>
											<span class="cart-price">45.00</span> <span>Size: XL</span> <span>Color:
												Green</span>
										</div>
										<a class="del-icone" href="#"><i class="ion-close"></i></a>
									</div> <!-- Cart Box End --> <!-- Cart Footer Inner Start -->
									<div class="cart-footer">
										<ul class="price-content">
											<li>Subtotal <span>$57.95</span></li>
											<li>Shipping <span>$7.00</span></li>
											<li>Taxes <span>$0.00</span></li>
											<li>Total <span>$64.95</span></li>
										</ul>
										<div class="cart-actions text-center">
											<a class="cart-checkout" href="checkout.html">Checkout</a>
										</div>
									</div> <!-- Cart Footer Inner End -->
								</li>
							</ul></li>
						<li><a href="#"><i class="lnr lnr-heart"></i><span
								class="my-cart"><span>Wish</span><span>list (0)</span></span></a></li>
						<li><a href="#"><i class="lnr lnr-user"></i><span
								class="my-cart" style="color: red; font-size: 22px;"> <security:authorize
										access="isAuthenticated()">
										<security:authentication property="principal.username" />
									</security:authorize>




							</span></a></li>
					</ul>
				</div>
			</div>
			<!-- Cart Box End Here -->
		</div>
		<!-- Row End -->
	</div>
	<!-- Container End -->
</div>