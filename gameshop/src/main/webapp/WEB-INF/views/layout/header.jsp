<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Header Start  -->
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">歡迎來到Wits電玩購物網站!</div>
			</div>
			<div class="top-bar-right">
				<ul class="header-user-links">

					<c:choose>
						<c:when test="${not empty userName}">
							<li>Welcome, ${userName}!</li>
						</c:when>
						<c:otherwise>
							<li><a href="/tp2305.eShop/login">登入或創建會員</a></li>
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="main-header">
			<div class="row">
				<div
					class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
					<div class="logo">
						<div class="header__logo">
							<a href="${basePath}/index"> <img
								src="${basePath}/resources/assets/images/logo.png" alt="img">

							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
					<div class="block-search-block">
						<form class="form-search form-search-width-category">
							<div class="form-content">
								<div class="category">
									<select title="cate" data-placeholder="All Categories"
										class="chosen-select" tabindex="1">
										<option value="United States">遊戲資訊</option>
										<option value="United Kingdom">主機種類</option>
										<option value="Afghanistan">遊戲新聞</option>
										<option value="Aland Islands">電玩技巧</option>
										<option value="Albania">新品資訊</option>
										<option value="Algeria">電玩歷史</option>
									</select>
								</div>
								<div class="inner">
									<input type="text" class="input" name="s" value=""
										placeholder="Search here">
								</div>
								<button class="btn-search" type="submit">
									<span class="icon-search"></span>
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
					<div class="header-control">
						<div
							class="block-minicart tanajil-mini-cart block-header tanajil-dropdown">
							<a href="javascript:void(0);" class="shopcart-icon"
								data-tanajil="tanajil-dropdown"> Cart <span class="count">
									0 </span>
							</a>
							<div class="shopcart-description tanajil-submenu">
								<div class="content-wrap">
									<h3 class="title">Shopping Cart</h3>
									<ul class="minicart-items">
										<li class="product-cart mini_cart_item"><a href="#"
											class="product-media"> <img
												src="${basePathh}/resources/assets/images/item-minicart-1.jpg"
												alt="img">

										</a>
											<div class="product-details">
												<h5 class="product-name">
													<a href="#">Wheel With Inserts</a>
												</h5>
												<div class="variations">
													<span class="attribute_color"> <a href="#">Black</a>
													</span> , <span class="attribute_size"> <a href="#">300ml</a>
													</span>
												</div>
												<span class="product-price"> <span class="price">
														<span>$45</span>
												</span>
												</span> <span class="product-quantity"> (x1) </span>
												<div class="product-remove">
													<a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
												</div>
											</div></li>
										<li class="product-cart mini_cart_item"><a href="#"
											class="product-media"> <img
												src="${basePath}/resources/assets/images/item-minicart-2.jpg"
												alt="img">
										</a>
											<div class="product-details">
												<h5 class="product-name">
													<a href="#">Soap Wheels Solutions</a>
												</h5>
												<div class="variations">
													<span class="attribute_color"> <a href="#">Black</a>
													</span> , <span class="attribute_size"> <a href="#">300ml</a>
													</span>
												</div>
												<span class="product-price"> <span class="price">
														<span>$45</span>
												</span>
												</span> <span class="product-quantity"> (x1) </span>
												<div class="product-remove">
													<a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
												</div>
											</div></li>
										<li class="product-cart mini_cart_item"><a href="#"
											class="product-media"> <img
												src="${basePath}/resources/assets/images/item-minicart-3.jpg"
												alt="img">
										</a>
											<div class="product-details">
												<h5 class="product-name">
													<a href="#">Wheels Solutions Soap</a>
												</h5>
												<div class="variations">
													<span class="attribute_color"> <a href="#">Black</a>
													</span> , <span class="attribute_size"> <a href="#">300ml</a>
													</span>
												</div>
												<span class="product-price"> <span class="price">
														<span>$45</span>
												</span>
												</span> <span class="product-quantity"> (x1) </span>
												<div class="product-remove">
													<a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
												</div>
											</div></li>
									</ul>
									<div class="subtotal">
										<span class="total-title">Subtotal: </span> <span
											class="total-price"> <span class="Price-amount">
												$135 </span>
										</span>
									</div>
									<div class="actions">
										<a class="button button-viewcart" href="shoppingcart.html">
											<span>View Bag</span>
										</a> <a href="checkout.html" class="button button-checkout"> <span>Checkout</span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-account block-header tanajil-dropdown">
							<a href="javascript:void(0);" data-tanajil="tanajil-dropdown">
								<span class="flaticon-user"></span>
							</a>

							<c:choose>
								<c:when test="${empty userName}">
									<div class="header-account tanajil-submenu">
										<div class="header-user-form-tabs">
											<ul class="tab-link">
												<li class="active">
													<form method="get" action="/tp2305.eShop/login">
														<button type="submit">Login</button>
													</form>
												</li>
												<li>
													<form method="get" action="/tp2305.eShop/login">
														<button type="submit">Register</button>
													</form>
												</li>
											</ul>
											<div class="tab-container">
												<div id="header-tab-login" class="tab-panel active">
													<form method="post" class="login form-login"
														action="/tp2305.eShop/login">
														<p class="form-row form-row-wide">
															<input type="email" placeholder="Email"
																class="input-text" id="username">
														</p>
														<p class="form-row form-row-wide">
															<input type="password" class="input-text"
																placeholder="Password" id="password">
														</p>
														<p class="form-row">
															<label class="form-checkbox"> <input
																type="checkbox" class="input-checkbox" name="rememberMe">
																<span>Remember me</span>
															</label> <input type="button" class="button" value="Login"
																onclick="doLogin()">
														</p>
														<p class="lost_password">
															<a href="#">Lost your password?</a>
														</p>
													</form>
												</div>
												<div id="header-tab-rigister" class="tab-panel">
													<form method="post" class="register form-register">
														<p class="form-row form-row-wide">
															<input type="email" placeholder="Email"
																class="input-text">
														</p>
														<p class="form-row form-row-wide">
															<input type="password" class="input-text"
																placeholder="Password">
														</p>
														<p class="form-row">
															<input type="submit" class="button" value="Register">
														</p>
													</form>
												</div>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>

									<div class="header-account tanajil-submenu">
										<div class="header-user-form-tabs">
											<ul class="tab-link">
												<li>
													<form method="get" action="/tp2305.eShop/logout" id="logout">
														<button type="button" onclick="logoutFunction()">Logout</button>
													</form>
												</li>
												<li>
													<form method="get" action="/tp2305.eShop/history">
														<button type="submit">歷史訂單</button>
													</form>
												</li>
											</ul>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<a class="menu-bar mobile-navigation menu-toggle" href="#"> <span></span>
					<span></span> <span></span>
				</a>
			</div>
		</div>
	</div>
	<div class="header-nav-container rows-space-20">
		<div class="container">
			<div class="header-nav-wapper main-menu-wapper">
				<div class="vertical-wapper block-nav-categori">
					<div class="block-title">
						<span class="icon-bar"> <span></span> <span></span> <span></span>
						</span> <span class="text">All Categories</span>
					</div>
					<div class="block-content verticalmenu-content">
						<ul
							class="tanajil-nav-vertical vertical-menu tanajil-clone-mobile-menu">
							<li class="menu-item"><a href="#"
								class="tanajil-menu-item-title" title="New Arrivals">New
									Arrivals</a></li>
							<li class="menu-item"><a title="Hot Sale" href="#"
								class="tanajil-menu-item-title">Hot Sale</a></li>
							<li class="menu-item menu-item-has-children"><a
								title="Accessories" href="#" class="tanajil-menu-item-title">Accessories</a>
								<span class="toggle-submenu"></span>
								<ul role="menu" class=" submenu">
									<li class="menu-item"><a title="Audio" href="#"
										class="tanajil-item-title">Audio</a></li>
									<li class="menu-item"><a title="Interior" href="#"
										class="tanajil-item-title">Interior</a></li>
									<li class="menu-item"><a title="New Arrivals" href="#"
										class="tanajil-item-title">New Arrivals</a></li>
									<li class="menu-item"><a title="Accessories" href="#"
										class="tanajil-item-title">Accessories</a></li>
									<li class="menu-item"><a title="Storage" href="#"
										class="tanajil-item-title">Storage</a></li>
								</ul></li>
							<li class="menu-item"><a title="Interior" href="#"
								class="tanajil-menu-item-title">Interior</a></li>
							<li class="menu-item"><a title="Lighting" href="#"
								class="tanajil-menu-item-title">Lighting</a></li>
							<li class="menu-item"><a title="Wheels" href="#"
								class="tanajil-menu-item-title">Wheels</a></li>
							<li class="menu-item"><a title="Tires" href="#"
								class="tanajil-menu-item-title">Tires</a></li>
							<li class="menu-item"><a title="Exterior" href="#"
								class="tanajil-menu-item-title">Exterior</a></li>
						</ul>
					</div>
				</div>
				<div class="header-nav">
					<div class="container-wapper">
						<ul class="tanajil-clone-mobile-menu tanajil-nav main-menu "
							id="menu-main-menu">
							<li class="menu-item  menu-item-has-children"><a
								href="${basePath}/gridproducts3"
								title="Home${basePath}/gridproducts3">商店後台管理</a><span
								class="toggle-submenu"></span>
								<ul class="submenu">
									<li class="menu-item"><a href="${basePath}/productAdd">商品新增</a></li>
									<li class="menu-item"><a href="${basePath}/productAddAjax">商品新增AJAX</a></li>
									<li class="menu-item"><a href="${basePath}/productAddTest">商品新增測試</a></li>
								</ul></li>
							<li class="menu-item menu-item-has-children"><a
								href="${basePath}/gridproducts" class="tanajil-menu-item-title"
								title="Shop">商店</a> <span class="toggle-submenu"></span>
								<ul class="submenu">
									<li class="menu-item"><a href="${basePath}/gridproducts2">商品瀏覽AJAX(未開發)</a></li>
									<li class="menu-item"><a href="${basePath}/page">商品頁數(未完成)</a></li>
									<li class="menu-item"><a href="${basePath}/gridproducts3">商品編輯後台</a></li>
								</ul></li>
							<li class="menu-item  menu-item-has-children item-megamenu">
								<a href="#" class="tanajil-menu-item-title" title="Pages">Pages</a>
								<span class="toggle-submenu"></span>
								<div class="submenu mega-menu menu-page">
									<div class="row">
										<div
											class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											<div class="tanajil-custommenu default">
												<h2 class="widgettitle">網頁分類</h2>
												<ul class="menu">
													<li class="menu-item"><a href="shoppingcart.html">購物車</a>
													</li>
													<li class="menu-item"><a href="checkout.html">歷史訂單</a>
													</li>
													<li class="menu-item"><a href="contact.html">聯絡我們</a>
													</li>
													<li class="menu-item"><a href="404page.html">錯誤資訊</a>
													</li>
													<li class="menu-item"><a href="login.html">登入/註冊</a></li>
												</ul>
											</div>
										</div>
										<div
											class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											<div class="tanajil-custommenu default">
												<h2 class="widgettitle">Product</h2>
												<ul class="menu">
													<li class="menu-item"><a
														href="productdetails-fullwidth.html">主機介紹</a></li>
													<li class="menu-item"><a
														href="productdetails-leftsidebar.html">遊戲情報</a></li>
													<li class="menu-item"><a
														href="productdetails-rightsidebar.html">電玩技巧</a></li>
												</ul>
											</div>
										</div>
										<div
											class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
										</div>
										<div
											class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
										</div>
									</div>
								</div>
							</li>
						<li class="menu-item  menu-item-has-children"><a
									href="inblog_right-siderbar.html"
									class="tanajil-menu-item-title" title="Blogs">電玩部落客</a> <span
									class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item menu-item-has-children"><a href="#"
											class="tanajil-menu-item-title" title="Blog Style">遊戲網紅</a> <span
											class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a href="bloggrid.html">電玩大神</a>
												</li>
												<li class="menu-item"><a href="bloglist.html">遊戲喵喵</a>
												</li>
												<li class="menu-item"><a
													href="bloglist-leftsidebar.html">瘋狂玩家</a></li>
											</ul></li>
										<li class="menu-item menu-item-has-children"><a href="#"
											class="tanajil-menu-item-title" title="Post Layout">遊戲Tip</a>
											<span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a
													href="inblog_left-siderbar.html">訪間傳說</a></li>
												<li class="menu-item"><a
													href="inblog_right-siderbar.html">遊戲破解</a></li>
											</ul></li>
									</ul></li>
							<li class="menu-item"><a href="about.html"
								class="tanajil-menu-item-title" title="About">購物車</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- Header End -->