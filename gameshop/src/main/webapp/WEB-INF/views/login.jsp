<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Tanajil - Login</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://cdn.bootstrapmb.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/chosen.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources//assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/lightbox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/mobile-menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css">
</head>
<body class="inblog-page">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">歡迎來到Wits電玩購物網!</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language">
						<div class="tanajil-language tanajil-dropdown">
							<a href="#" class="active language-toggle"
								data-tanajil="tanajil-dropdown"> <span> 中文 (NTD) </span>
							</a>
							<ul class="tanajil-submenu">
								<li class="switcher-option"><a href="#"> <span>
											French (EUR) </span>
								</a></li>
								<li class="switcher-option"><a href="#"> <span>
											Japanese (JPY) </span>
								</a></li>
							</ul>
						</div>
					</div>
					<ul class="header-user-links">
						<li><a href="login.html">登入或註冊</a></li>
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
							<a href="index"> <img
								src="${pageContext.request.contextPath}/resources/assets/images/logo.png"
								alt="img">
							</a>
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
											placeholder="關鍵字搜尋">
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
								<div class="no-product tanajil-submenu">
									<p class="text">
										You have <span> 0 item(s) </span> in your bag
									</p>
								</div>
							</div>
							<div class="block-account block-header tanajil-dropdown">
								<a href="javascript:void(0);" data-tanajil="tanajil-dropdown">
									<span class="flaticon-user"></span>
								</a>
								<div class="header-account tanajil-submenu">
									<div class="header-user-form-tabs">
										<ul class="tab-link">
											<li class="active"><a data-toggle="tab"
												aria-expanded="true" href="#header-tab-login">Login</a></li>
											<li><a data-toggle="tab" aria-expanded="true"
												href="#header-tab-rigister">Register</a></li>
										</ul>
										<div class="tab-container">
											<div id="header-tab-login" class="tab-panel active">
												<form method="post" class="login form-login">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text"
															placeholder="Password">
													</p>
													<p class="form-row">
														<label class="form-checkbox"> <input
															type="checkbox" class="input-checkbox"> <span>
																Remember me </span>
														</label> <input type="submit" class="button" value="login">
													</p>
													<p class="lost_password">
														<a href="#">Lost your password?</a>
													</p>
												</form>
											</div>
											<div id="header-tab-rigister" class="tab-panel">
												<form method="post" class="register form-register">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
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
							</div>
							<a class="menu-bar mobile-navigation menu-toggle" href="#"> <span></span>
								<span></span> <span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-nav-container">
			<div class="container">
				<div class="header-nav-wapper main-menu-wapper">
					<div class="vertical-wapper block-nav-categori">
						<div class="block-title">
							<span class="icon-bar"> <span></span> <span></span> <span></span>
							</span> <span class="text">所有類別</span>
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
									href="index" class="tanajil-menu-item-title" title="Home">主頁</a>
									<span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="index">新品專區</a></li>
										<li class="menu-item"><a href="home2.html">商品瀏覽</a></li>
										<li class="menu-item"><a href="home3.html">二手專區</a></li>
									</ul></li>
								<li class="menu-item menu-item-has-children"><a
									href="gridproducts.html" class="tanajil-menu-item-title"
									title="Shop">購物專區</a> <span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="gridproducts.html">主機類別</a>
										</li>
										<li class="menu-item"><a
											href="gridproducts_leftsidebar.html">遊戲類別</a></li>
										<li class="menu-item"><a
											href="gridproducts_bannerslider.html">遊戲周邊</a></li>
										<li class="menu-item"><a href="listproducts.html">電玩雜誌</a>
										</li>
									</ul></li>
								<li class="menu-item  menu-item-has-children item-megamenu">
									<a href="#" class="tanajil-menu-item-title" title="Pages">全站瀏覽</a>
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
														<li class="menu-item"><a href="login.html">登入/註冊</a>
														</li>
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
									class="tanajil-menu-item-title" title="About">關於我</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"> <img
						src="${pageContext.request.contextPath}/resources/assets/images/logo.png"
						alt="img">
					</a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub">
				<a href="#"> <span class="icon"> <i class="fa fa-search"
						aria-hidden="true"></i>
				</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<div class="header-searchform-box">
						<form class="header-searchform">
							<div class="searchform-wrap">
								<input type="text" class="search-input"
									placeholder="Enter keywords to search..."> <input
									type="submit" class="submit button" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="item mobile-settings-box has-sub">
				<a href="#"> <span class="icon"> <i class="fa fa-cog"
						aria-hidden="true"></i>
				</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<div class="block-sub-item">
						<h5 class="block-item-title">Currency</h5>
						<form class="currency-form tanajil-language">
							<ul class="tanajil-language-wrap">
								<li class="active"><a href="#"> <span> Taiwan
											(NTD) </span>
								</a></li>
								<li><a href="#"> <span> French (EUR) </span>
								</a></li>
								<li><a href="#"> <span> Japanese (JPY) </span>
								</a></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar">
				<a class=" mobile-navigation  menu-toggle" href="#"> <span></span>
					<span></span> <span></span>
				</a>
			</div>
		</div>
	</div>
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index">主頁</a></li>
							<li class="trail-item trail-end active">驗證</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">會員驗證</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">登入帳號</h5>
										<form class="login">
											<div class="social-account">
												<h6 class="title-social">其他帳戶</h6>
												<a href="#" class="mxh-item facebook"> <i
													class="icon fa fa-facebook-square" aria-hidden="true"></i>
													<span class="text">FACEBOOK</span>
												</a> <a href="#" class="mxh-item twitter"> <i
													class="icon fa fa-twitter" aria-hidden="true"></i> <span
													class="text">TWITTER</span>
												</a>
											</div>
											<p class="form-row form-row-wide">
												<label class="text">使用者信箱</label> <input title="username"
													type="text" class="input-text" id="username">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">使用者密碼</label> <input title="password"
													type="password" class="input-text" id="password">
											</p>
											<p class="lost_password">
												<span class="inline"> <input type="checkbox" id="cb1">
													<label for="cb1" class="label-text">記住我</label>
												</span> <a href="#" class="forgot-pw">忘記密碼?</a>
											</p>
											<p class="form-row">
												<input type="button" class="button-submit" value="會員登入"
													onclick="loginFunction()">
											</p>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">馬上註冊</h5>
										<form class="register">
											<p class="form-row form-row-wide">
												<label class="text">你的電子信箱</label> <input title="email"
													type="email" class="input-text" id=createUserEmail
													maxlength="40">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">輸入密碼</label> <input title="pass"
													type="password" class="input-text" id=createUserPassword
													maxlength="20">
											</p>
											<p class="form-row form-row-wide" style="position: relative;">
												<label class="text">你的暱稱</label> <input title="name"
													type="text" class="input-text" id=createUserNickName
													maxlength="30" value="新會員">
											</p>
											<p class="form-row form-row-wide"
												style="position: absolute; right: 40px; top: 100px;">
												<label class="text">你的電話</label> <input title="phone"
													type="text" class="input-text" id=createUserPhone
													maxlength="10">
											</p>
											<p class="form-row form-row-wide">
												<label class="upload_cover"
													style="position: absolute; right: 150px; top: 250px; width: 100px; height: 100px; text-align: center; cursor: pointer; background: #efefef; border: 1px solid #595656;">

													<label class="text">你的頭像</label> <input id="createUserPic"
													title="userPic" type="file" class="input-text"
													style="display: none;"> <span class="upload_icon"
													style="font-weight: bold; font-size: 180%;">➕</span> <img
													id="demo" style="width: 150px;; padding: 50px 0px 0 0;">
												</label>
											</p>

											<p class="form-row">
												<span class="inline"> <input type="checkbox" id="cb2">
													<label for="cb2" class="label-text">我同意 <span>網站條款
															& 與注意事項</span></label>
												</span>
											</p>
											<p class="">
												<input type="button" class="button-submit" value="註冊會員"
													onclick="createFunction()">
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer style7">
		<div class="container">
			<div class="container-wapper">
				<div class="row">
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="widget-box">
							<div class="single-img">
								<a href="index"><img
									src="${pageContext.request.contextPath}/resources/assets/images/logo-light.png"
									alt="img"></a>
							</div>
							<ul class="menu">
								<li class="menu-item"><a href="#"><span
										class="flaticon-placeholder"></span>221 新北市汐止區新台五路1段93號32樓</a></li>
								<li class="menu-item"><a href="#"><span
										class="fa fa-phone"></span>02-7745-8888</a></li>
								<li class="menu-item"><a href="#"><span
										class="fa fa-envelope-o"></span>info@wistronits.com</a></li>
								<li class="menu-item"><a href="#"><span
										class="flaticon-clock"></span>Mon-Fri 9:00am - 6:00pm Sat,Sun
										: Closed</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="tanajil-custommenu default">
							<h2 class="widgettitle">快速選單</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">新品到貨</a></li>
								<li class="menu-item"><a href="#">二手專區</a></li>
								<li class="menu-item"><a href="#">購物車</a></li>
								<li class="menu-item"><a href="#">歷史訂單</a></li>
								<li class="menu-item"><a href="#">商品瀏覽</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="tanajil-custommenu default">
							<h2 class="widgettitle">服務台</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">FAQs</a></li>
								<li class="menu-item"><a href="#">訂單追蹤</a></li>
								<li class="menu-item"><a href="#">配送</a></li>
								<li class="menu-item"><a href="#">聯絡我們</a></li>
								<li class="menu-item"><a href="#">回到首頁</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="tanajil-newsletter style1">
							<div class="newsletter-head">
								<h3 class="title">新品發佈</h3>
							</div>
							<div class="newsletter-form-wrap">
								<div class="list">獲取有關新產品、限量發佈等的通知。</div>
								<input type="email" class="input-text email email-newsletter"
									placeholder="你的電子信箱">
								<button class="button btn-submit submit-newsletter">SUBSCRIBE</button>
							</div>
						</div>
						<div class="tanajil-socials">
							<ul class="socials">
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-facebook"></i>
								</a></li>
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-twitter"></i>
								</a></li>
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-instagram"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 border-custom">
						<span></span>
					</div>
				</div>
				<div class="footer-end">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="coppyright">
								Copyright © 2019 <a href="http://www.bootstrapmb.com/">Wits</a>
								. All rights reserved
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="tanajil-payment">
								<img
									src="${pageContext.request.contextPath}/resources/assets/images/payments.png"
									alt="img">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script>
		function loginFunction() {

			let name = $('#username').val();
			let password = $('#password').val();
			
			let requestBody = {
					userAccount : name,
					userPassword : password
				};
			let requestData = {
					requestBody : requestBody,
					type : "login"
				};
			
			let url = "/tp2305.eShop/login";
			$.ajax({
				async : false,
				url : url,
				type : "POST",
				contentType : 'application/json',
				data : JSON.stringify(requestData),
				success: function(data, textStatus, xhr) {
					 if (xhr.status == 200) {
						Swal.fire({
							title : "會員成功登入",
							customClass : "styleTitle",
							timer: 2000
						}).then((result) => {
							window.location.href = "/tp2305.eShop/index"; 
							});
					} else if(xhr.status == 208){
						Swal.fire({
							title : "會員尚未驗證",
							customClass : "styleTitle"
						})
					}else {
						Swal.fire({
							title : "使用者名稱或密碼錯誤，請重新輸入",
							customClass : "styleTitle"
						});
					}
				},
				error : function(xhr, status, error) {
					Swal.fire({
						title : "資料庫連線失敗，請重新操作",
						customClass : "styleTitle"
					});
				}
			});
			return false;
		}
	</script>
	<script>
		function createFunction() {
			let userEmail = $('#createUserEmail').val();
			const emailRegex = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
			
			let userPassword = $('#createUserPassword').val();
			const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,12}$/
			
			let userNickName = $('#createUserNickName').val();
			
			let userPhone = $('#createUserPhone').val();
			const phoneRegex = /^[0-9]{10}$/
	
			if (userEmail.search(emailRegex)== -1) {
				Swal.fire({
					title : "請輸入使用者電子信箱(格式為XXX@CCC.AAA)",
					customClass : "styleTitle"
				});
				return false;
			}
			if (userPassword.search(passwordRegex)== -1) {
				Swal.fire({
					title : "請輸入使用者密碼(最少六個數字或英文組成)",
					customClass : "styleTitle"
				});
				return false;
			}
			if(userNickName.length == 0){
				userNickName == "NewUser" ;
			}
			if (userPhone.search(phoneRegex)== -1) {
				Swal.fire({
					title : "請輸入使用者電話號碼(由十碼數字或英文組成)",
					customClass : "styleTitle"
				});
				return false;
			}
			let queryObj = {
				USERMAIL : userEmail,
				PASSWORD : userPassword,
				NICKNAME : userNickName,
				PHONE : userPhone
			};

			let url = "/tp2305.eShop/userVerify";
			$.ajax({
				async : false,
				url : url,
				type : "POST",
				contentType : 'application/json',
				data : JSON.stringify(queryObj),
				success: function(data, textStatus, xhr) {
					  if (xhr.status == 201) {
					    Swal.fire({
					      title: "此帳號已被使用",
					      customClass: "styleTitle"
					    });
					  } else if (xhr.status == 200) {
					    Swal.fire({
					      title: "會員驗證信件寄出",
					      customClass: "styleTitle",
					      timer: 2000
					    }).then((result) => {
					      window.location.href = "/tp2305.eShop/verify";
					    });
					  } else {
					    console.log("返回數據不匹配:", data);
					  }
					},
				error : function(xhr, status, error) {
					Swal.fire({
						title : "資料庫連線失敗，請重新操作",
						customClass : "styleTitle"
					});
				}
			});
			return false;
		}
	</script>
	<script>
		$('#createUserPic').on('change', function(e) {
			const file = this.files[0];
			const fr = new FileReader();
			fr.onload = function(e) {
				$('#demo').attr('src', e.target.result);
			};
			fr.readAsDataURL(file);
		});
	</script>
	<style>
.styleTitle {
	font-size: 16px;
	width: auto;
}
</style>