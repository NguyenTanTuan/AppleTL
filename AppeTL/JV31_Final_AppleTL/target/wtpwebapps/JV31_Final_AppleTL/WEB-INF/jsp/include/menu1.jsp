<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header-bottom  header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                         <div class="col-xl-3 col-lg-4 col-md-6 vertical-menu d-none d-lg-block">
                            <span class="categorie-title">Shop by Categories</span>
                        </div>                       
                        <div class="col-xl-9 col-lg-8 col-md-12 ">
                            <nav class="d-none d-lg-block">
                                <ul class="header-bottom-list d-flex">
                                    <li class="active"><a href="home.jsp">home<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown">
                                            <li><a href="home.jsp">Home Version 1</a></li>
                                            <li><a href="<c:url value="/home/"/>">Home</a></li>
                                            <li><a href="index-3.html">Home Version 3</a></li>
                                            <li><a href="index-4.html">Home Version 4</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="shop.html">shop<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="product.html">product details</a></li>
                                            <li><a href="compare.html">compare</a></li>
                                            <li><a href="cart.html">cart</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="blog.html">blog<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="single-blog.html">blog details</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="#">pages<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="contact.html">contact us</a></li>
                                            <li><a href="register.html">register</a></li>
                                            <li><a href="login.html">sign in</a></li>
                                            <li><a href="forgot-password.html">forgot password</a></li>
                                            <li><a href="404.html">404</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="about.html">About us</a></li>
                                    <li><a href="contact.html">contact us</a></li>
                                </ul>
                            </nav>
                            
                        </div>
                    </div>
                    <!-- Row End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Bottom End Here -->
            <!-- Mobile Vertical Menu Start Here -->
            <div class="container d-block d-lg-none">
                <div class="vertical-menu mt-30">
                    <span class="categorie-title mobile-categorei-menu">Shop by Categories </span>
                    <nav>  
                        <div id="cate-mobile-toggle" class="category-menu sidebar-menu sidbar-style mobile-categorei-menu-list menu-hidden ">
                            <ul>
                                <li class="has-sub"><a href="#">Automotive & Motorcycle </a>
                                    <ul class="category-sub">
                                        <li class="has-sub"><a href="shop.html">Office chair</a>
                                            <ul class="category-sub">
                                                <li><a href="shop.html">Bibendum Cursus</a></li>
                                                <li><a href="shop.html">Dignissim Turpis</a></li>
                                                <li><a href="shop.html">Dining room</a></li>
                                                <li><a href="shop.html">Dining room</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-sub"><a href="shop.html">Purus Lacus</a>
                                            <ul class="category-sub">
                                                <li><a href="shop.html">Magna Pellentesq</a></li>
                                                <li><a href="shop.html">Molestie Tortor</a></li>
                                                <li><a href="shop.html">Vehicula Element</a></li>
                                                <li><a href="shop.html">Sagittis Blandit</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">gps accessories</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Sports & Outdoors</a>
                                    <ul class="category-sub">
                                        <li class="menu-tile">Cameras</li>
                                        <li><a href="shop.html">Cords and Cables</a></li>
                                        <li><a href="shop.html">gps accessories</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Home & Kitchen</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">kithen one</a></li>
                                        <li><a href="shop.html">kithen two</a></li>
                                        <li><a href="shop.html">kithen three</a></li>
                                        <li><a href="shop.html">kithen four</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Phones & Tablets</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">phone one</a></li>
                                        <li><a href="shop.html">Tablet two</a></li>
                                        <li><a href="shop.html">Tablet three</a></li>
                                        <li><a href="shop.html">phone four</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">TV & Video</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">smart tv</a></li>
                                        <li><a href="shop.html">real video</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li><a href="#">Beauty</a> </li>
                                <li><a href="#">Sport & tourisim</a></li>
                                <li><a href="#">Meat & Seafood</a></li>
                            </ul>
                        </div>
                        <!-- category-menu-end -->
                    </nav>
                </div>
            </div>
             <div class="container">
                <div class="row">
                    <!-- Vertical Menu Start Here -->
                    <div class="col-xl-3 col-lg-4 d-none d-lg-block">
                        <div class="vertical-menu mb-all-30">
                            <nav>
                                <ul class="vertical-menu-list">
                                    <li class=""><a href="shop.html"><span>
                                    <img src="<c:url value="/resources/img/vertical-menu/1.png"/>" alt="menu-icon">
                                    </span>Automotive & Motorcycle<i class="fa fa-angle-right" aria-hidden="true"></i></a>

                                        <ul class="ht-dropdown mega-child">
                                            <li><a href="shop.html">Office chair <i class="fa fa-angle-right"></i></a>
                                                 <!-- category submenu end-->
                                                <ul class="ht-dropdown mega-child">
                                                    <li><a href="shop.html">Bibendum Cursus</a></li>
                                                    <li><a href="shop.html">Dignissim Turpis</a></li>
                                                    <li><a href="shop.html">Dining room</a></li>
                                                    <li><a href="shop.html">Dining room</a></li>
                                                </ul>
                                                <!-- category submenu end-->
                                            </li>
                                            <li><a href="shop.html">Purus Lacus <i class="fa fa-angle-right"></i></a>
                                                 <!-- category submenu end-->
                                                <ul class="ht-dropdown mega-child">
                                                    <li><a href="shop.html">Magna Pellentesq</a></li>
                                                    <li><a href="shop.html">Molestie Tortor</a></li>
                                                    <li><a href="shop.html">Vehicula Element</a></li>
                                                    <li><a href="shop.html">Sagittis Blandit</a></li>
                                                </ul>
                                                <!-- category submenu end-->
                                            </li>                                            
                                            <li><a href="shop.html">Sagittis Eget</a></li>
                                            <li><a href="shop.html">Sagittis Eget</a></li>
                                        </ul>
                                        <!-- category submenu end-->
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/3.png"/>" alt="menu-icon"></span>Sports & Outdoors<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        <!-- Vertical Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu first-megamenu">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Cameras</li>
                                                    <li><a href="shop.html">Cords and Cables</a></li>
                                                    <li><a href="shop.html">gps accessories</a></li>
                                                    <li><a href="shop.html">Microphones</a></li>
                                                    <li><a href="shop.html">Wireless Transmitters</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="menu-tile">GamePad</li>
                                                    <li><a href="shop.html">real game hd</a></li>
                                                    <li><a href="shop.html">fighting game</a></li>
                                                    <li><a href="shop.html">racing pad</a></li>
                                                    <li><a href="shop.html">puzzle pad</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Digital Cameras</li>
                                                    <li><a href="shop.html">Camera one</a></li>
                                                    <li><a href="shop.html">Camera two</a></li>
                                                    <li><a href="shop.html">Camera three</a></li>
                                                    <li><a href="shop.html">Camera four</a></li>
                                                </ul>
                                                <ul>
                                                    <li class="menu-tile">Virtual Reality</li>
                                                    <li><a href="shop.html">Reality one</a></li>
                                                    <li><a href="shop.html">Reality two</a></li>
                                                    <li><a href="shop.html">Reality three</a></li>
                                                    <li><a href="shop.html">Reality four</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Megamenu Image Start -->
                                            <li class="megamenu-img">
                                                <a href="shop.html"><img src="<c:url value="/resources/img/vertical-menu/sub-img1.jpg"/>" alt="menu-image"></a>
                                                <a href="shop.html"><img src="<c:url value="/resources/img/vertical-menu/sub-img2.jpg"/>" alt="menu-image"></a>
                                                <a href="shop.html"><img src="<c:url value="/resources/img/vertical-menu/sub-img3.jpg"/>" alt="menu-image"></a>
                                            </li>
                                            <!-- Single Megamenu Image End -->
                                        </ul>
                                        <!-- Vertical Mega-Menu End -->
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/6.png"/>" alt="menu-icon"></span>Fashion<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        <!-- Vertical Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu megamenu-two">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Men’s Fashion</li>
                                                    <li><a href="shop.html">Blazers</a></li>
                                                    <li><a href="shop.html">Boots</a></li>
                                                    <li><a href="shop.html">pants</a></li>
                                                    <li><a href="shop.html">Tops & Tees</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Women’s Fashion</li>
                                                    <li><a href="shop.html">Bags</a></li>
                                                    <li><a href="shop.html">Bottoms</a></li>
                                                    <li><a href="shop.html">Shirts</a></li>
                                                    <li><a href="shop.html">Tailored</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                        </ul>
                                        <!-- Vertical Mega-Menu End -->
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/7.png"/>" alt="menu-icon"></span>Home & Kitchen<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        <!-- Vertical Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu megamenu-two">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Large Appliances</li>
                                                    <li><a href="shop.html">Armchairs</a></li>
                                                    <li><a href="shop.html">Bunk Bed</a></li>
                                                    <li><a href="shop.html">Mattress</a></li>
                                                    <li><a href="shop.html">Sideboard</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Small Appliances</li>
                                                    <li><a href="shop.html">Bootees Bags</a></li>
                                                    <li><a href="shop.html">Jackets</a></li>
                                                    <li><a href="shop.html">Shelf</a></li>
                                                    <li><a href="shop.html">Shoes</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                        </ul>
                                        <!-- Vertical Mega-Menu End --> 
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/4.png"/>" alt="menu-icon"></span>Phones & Tablets<i class="fa fa-angle-right" aria-hidden="true"></i>
                                    </a>
                                        <!-- Vertical Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu megamenu-two">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Tablet</li>
                                                    <li><a href="shop.html">tablet one</a></li>
                                                    <li><a href="shop.html">tablet two</a></li>
                                                    <li><a href="shop.html">tablet three</a></li>
                                                    <li><a href="shop.html">tablet four</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Smartphone</li>
                                                    <li><a href="shop.html">phone one</a></li>
                                                    <li><a href="shop.html">phone two</a></li>
                                                    <li><a href="shop.html">phone three</a></li>
                                                    <li><a href="shop.html">phone four</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                        </ul>
                                        <!-- Vertical Mega-Menu End -->
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/6.png"/>" alt="menu-icon"></span>TV & Video<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        <!-- Vertical Mega-Menu Start -->
                                        <ul class="ht-dropdown megamenu megamenu-two">
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Gaming Desktops</li>
                                                    <li><a href="shop.html">Alpha Desktop</a></li>
                                                    <li><a href="shop.html">rober Desktop</a></li>
                                                    <li><a href="shop.html">Ultra Desktop </a></li>
                                                    <li><a href="shop.html">beta desktop</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                            <!-- Single Column Start -->
                                            <li class="single-megamenu">
                                                <ul>
                                                    <li class="menu-tile">Women’s Fashion</li>
                                                    <li><a href="shop.html">3D-Capable</a></li>
                                                    <li><a href="shop.html">Clearance</a></li>
                                                    <li><a href="shop.html">Free Shipping Eligible</a></li>
                                                    <li><a href="shop.html">On Sale</a></li>
                                                </ul>
                                            </li>
                                            <!-- Single Column End -->
                                        </ul>
                                        <!-- Vertical Mega-Menu End -->
                                    </li>
                                     <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/5.png"/>" alt="menu-icon"></span>Beauty</a>
                                    </li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/8.png"/>" alt="menu-icon"></span>Fruits & Veggies</a></li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/9.png"/>" alt="menu-icon"></span>Computer & Laptop</a></li>
                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/10.png"/>" alt="menu-icon"></span>Meat & Seafood</a></li>
                                    <!-- More Categoies Start -->
                                    <li id="cate-toggle" class="category-menu v-cat-menu">
                                        <ul>
                                            <li class="has-sub"><a href="#">More Categories</a>
                                                <ul class="category-sub">
                                                    <li><a href="shop.html"><span><img src="<c:url value="/resources/img/vertical-menu/11.png"/>" alt="menu-icon"></span>Accessories</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <!-- More Categoies End -->
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Vertical Menu End Here -->
                     <!-- Slider Area Start Here -->
                    
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->    