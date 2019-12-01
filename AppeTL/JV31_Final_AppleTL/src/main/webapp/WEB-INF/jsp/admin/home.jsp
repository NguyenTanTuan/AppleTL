<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN HOME</title>
</head>
<jsp:include page="include/headerAdmin-css.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="author-area-pro">
		<div class="container-fluid" style="padding-top: 40px;">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="personal-info-wrap">
						<div class="widget-head-info-box">
							<div class="persoanl-widget-hd">
								<h2>Mr Tuan</h2>
								<p>Founder of AppleTL</p>
							</div>
							<a href="https://www.instagram.com/tuan_nguyen2101/"><img
								src="<c:url value="/resources/imgAdmin/product/tuan1.png"/>"
								width="90px;" height="30px;"
								class="img-circle circle-border m-b-md" alt="profile"></a>
							<div class="social-widget-result">
								<span>100 Tweets</span> | <span>350 Following</span> | <span>610
									Followers</span>
							</div>
						</div>
						<div class="widget-text-box">
							<h4>Mr Tuan</h4>
							<p>To all the athaists attacking me right now, I can't make
								you believe in God, you have to have faith.</p>
							<div class="text-right like-love-list">
								<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i>
									Like </a> <a class="btn btn-xs btn-primary"><i
									class="fa fa-heart"></i> Love</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="personal-info-wrap personal-info-ano res-mg-t-30">
						<div class="widget-head-info-box">
							<div class="persoanl-widget-hd">
								<h2>Mr Lanh</h2>
								<p>Founder of AppleTL</p>
							</div>
							<a href="https://www.facebook.com/SihatNguyen"><img
								src="<c:url value="/resources/imgAdmin/product/lanh.png"/>"
								height="30px;" width="90px;"
								class="img-circle circle-border m-b-md" alt="profile"></a>
							<div class="social-widget-result">
								<span>100 Tweets</span> | <span>350 Following</span> | <span>610
									Followers</span>
							</div>
						</div>
						<div class="widget-text-box">
							<h4>Mr Lanh</h4>
							<p>To all the athaists attacking me right now, I can't make
								you believe in God, you have to have faith.</p>
							<div class="text-right like-love-list">
								<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i>
									Like </a> <a class="btn btn-xs btn-primary"><i
									class="fa fa-heart"></i> Love</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="calender-area mg-tb-30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="calender-inner">
						<div id='calendar'></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-copyright-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer-copy-right">
						<p>
							Copyright &copy; 2018 <a
								href="https://colorlib.com/wp/templates/">Colorlib</a> All
							rights reserved.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="include/footerAdmin-script.jsp"></jsp:include>

</body>
</html>