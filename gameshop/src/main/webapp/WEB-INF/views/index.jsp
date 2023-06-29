<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="layout/import.jsp"></jsp:include>

<title>tp2305:電玩購物網站</title>
</head>
<body class="home">
	<jsp:include page="layout/header.jsp"></jsp:include>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"> <img
						src="${basePath}/resources/assets/images/logo.png" alt="img">
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
								<li class="active"><a href="#"> <span> English
											(USD) </span>
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
	<div>
		<div class="fullwidth-template">
			<div class="home-slider-banner">
				<div class="container">
					<div class="row10">
						<div class="col-lg-8 silider-wrapp">
							<div class="home-slider">
								<div class="slider-owl owl-slick equal-container nav-center"
									data-slick='{"autoplay":true, "autoplaySpeed":9000, "arrows":false, "dots":true, "infinite":true, "speed":1000, "rows":1}'
									data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":1}}]'>
									<div class="slider-item style7">
										<div class="slider-inner equal-element">
											<div class="slider-infor">
												<h5 class="title-small">特價優惠中!</h5>
												<h3 class="title-big">跑車浪漫旅7豪華版</h3>
												<div class="price">
													New Price: <span class="number-price"> $2270.00 </span>
												</div>
												<a href="#" class="button btn-browse">Browse</a> <a href="#"
													class="button btn-shop-the-look bgroud-style">Shop now</a>
											</div>
										</div>
									</div>
									<div class="slider-item style8">
										<div class="slider-inner equal-element">
											<div class="slider-infor">
												<h5 class="title-small">跑車浪漫旅7</h5>
												<h3 class="title-big">Get 20% 優惠中</h3>
												<div class="price">
													Save Price: <span class="number-price"> $1970.00 </span>
												</div>
												<a href="#" class="button btn-shop-product">Shop now</a>
											</div>
										</div>
									</div>
									<div class="slider-item style9">
										<div class="slider-inner equal-element">
											<div class="slider-infor">
												<h5 class="title-small">Tanajil Best Collection</h5>
												<h3 class="title-big">跑車浪漫旅7發售中</h3>
												<a href="#" class="button btn-chekout">Shop now</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 banner-wrapp">
							<div class="banner">
								<div class="item-banner style7">
									<div class="inner">
										<div class="banner-content">
											<h3 class="title">pre-order bonus</h3>
											<div class="description">獨家預購贈品!數量有限 要買要快!</div>
											<a href="#" class="button btn-lets-do-it">Shop now</a>
										</div>
									</div>
								</div>
							</div>
							<div class="banner">
								<div class="item-banner style8">
									<div class="inner">
										<div class="banner-content">
											<h3 class="title">DLC </h3>
											<div class="description">DLC Parts 零件兌換處  DLC Parts Exchange</div>
											<span class="price">$FREE!!!</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tanajil-product produc-featured rows-space-65">
				<div class="container">
					<h3 class="custommenu-title-blog">最新商品</h3>
					<div class="owl-products owl-slick equal-container nav-center"
						data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":false, "speed":800, "rows":1}'
						data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":4}},{"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"480","settings":{"slidesToShow":1}}]'>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x01.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="10"
											data-w="4" data-d="10" data-h="20" data-i="20" data-s="60"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">Pillar Gauge Kit</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x02.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="9"
											data-w="2" data-d="30" data-h="20" data-i="60" data-s="60"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">Wheel With Inserts</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x03.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="12"
											data-w="1" data-d="24" data-h="20" data-i="50" data-s="60"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">Generation Direct Fit</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x04.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="7"
											data-w="3" data-d="20" data-h="10" data-i="10" data-s="20"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">Series Floor Mount</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x05.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="9"
											data-w="2" data-d="30" data-h="20" data-i="60" data-s="60"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">3-Pedal Assembly</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-item style-5">
							<div class="product-inner equal-element">
								<div class="product-top">
									<div class="flash">
										<span class="onnew"> <span class="text"> new </span>
										</span>
									</div>
								</div>
								<div class="product-thumb">
									<div class="thumb-inner">
										<a href="#"> <img
											src="${basePath}/resources/assets/images/x06.jpg" alt="img">
										</a>
										<div class="thumb-group">
											<div class="yith-wcwl-add-to-wishlist">
												<div class="yith-wcwl-add-button">
													<a href="#">Add to Wishlist</a>
												</div>
											</div>
											<a href="#" class="button quick-wiew-button">Quick View</a>
											<div class="loop-form-add-to-cart">
												<button class="single_add_to_cart_button button">Add
													to cart</button>
											</div>
										</div>
									</div>
									<div class="product-count-down">
										<div class="tanajil-countdown" data-y="2020" data-m="9"
											data-w="2" data-d="30" data-h="20" data-i="60" data-s="60"></div>
									</div>
								</div>
								<div class="product-info">
									<h5 class="product-name product_title">
										<a href="#">Air Intake System</a>
									</h5>
									<div class="group-info">
										<div class="stars-rating">
											<div class="star-rating">
												<span class="star-3"></span>
											</div>
											<div class="count-star">(3)</div>
										</div>
										<div class="price">
											<del> $65 </del>
											<ins> $45 </ins>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="banner-wrapp rows-space-65">
				<div class="container">
					<div class="banner">
						<div class="item-banner style17">
							<div class="inner">
								<div class="banner-content">
									<h3 class="title">賽車遊戲配備</h3>
									<div class="description">
										You have no car & Are you <br />ready to grow? come & shop
										with us!
									</div>
									<div class="banner-price">
										Price from: <span class="number-price">$45.00</span>
									</div>
									<a href="#" class="button btn-shop-now">Shop now</a> <a
										href="#" class="button btn-view-collection">View more</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tanajil-tabs  default rows-space-40">
				<div class="container">
					<div class="tab-head">
						<ul class="tab-link">
							<li class="active"><a data-toggle="tab" aria-expanded="true"
								href="#bestseller">動作遊戲</a></li>
							<li class=""><a data-toggle="tab" aria-expanded="true"
								href="#new_arrivals">派對遊戲</a></li>
							<li class=""><a data-toggle="tab" aria-expanded="true"
								href="#top-rated">劇情遊戲</a></li>
						</ul>
					</div>
					<div class="tab-container">
						<div id="bestseller" class="tab-panel active">
							<div class="tanajil-product">
								<ul
									class="row list-products auto-clear equal-container product-grid">
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y01.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Blade Turbo charger</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y02.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Evolution Exhaust</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y03.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">ALTA Performance</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y04.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Compress Circular</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y05.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">LED Headlights</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y06.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Armor All</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y07.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Glass Cleaner</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y08.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Audiopipe Series</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div id="new_arrivals" class="tab-panel">
							<div class="tanajil-product">
								<ul
									class="row list-products auto-clear equal-container product-grid">
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y09.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Coaxial Speakers</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y10.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Titanium Super Tweeter</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y11.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Auto Tech Interiors</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y12.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Series Gauge Panel</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y13.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Automatic X-Speed</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y14.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Chrome Shift Knob</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y15.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Wheel With Inserts</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y16.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Axial Mustang</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div id="top-rated" class="tab-panel">
							<div class="tanajil-product">
								<ul
									class="row list-products auto-clear equal-container product-grid">
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y17.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Projector Headlights</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y18.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Beat Sonic</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y19.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Shark Fin Antenna</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y20.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Billet Specialties</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y21.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Side View Mirror</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y22.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Exhaust System</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item product-type-variable col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y23.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Catalytic Converter</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li
										class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top">
												<div class="flash">
													<span class="onnew"> <span class="text"> new
													</span>
													</span>
												</div>
											</div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"> <img
														src="${basePath}/resources/assets/images/y24.jpg"
														alt="img">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>
														<a href="#" class="button quick-wiew-button">Quick
															View</a>
														<div class="loop-form-add-to-cart">
															<button class="single_add_to_cart_button button">Add
																to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title">
													<a href="#">Specialty Iridium</a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-3"></span>
														</div>
														<div class="count-star">(3)</div>
													</div>
													<div class="price">
														<del> $65 </del>
														<ins> $45 </ins>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tanajil-blog-wraap default">
				<div class="container">
					<h3 class="custommenu-title-blog">PlayStation 5 熱門遊戲</h3>
					<div class="tanajil-blog default">
						<div class="owl-slick equal-container nav-center"
							data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":true, "infinite":true, "speed":800, "rows":1}'
							data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":3}},{"breakpoint":"1200","settings":{"slidesToShow":3}},{"breakpoint":"992","settings":{"slidesToShow":2}},{"breakpoint":"768","settings":{"slidesToShow":2}},{"breakpoint":"481","settings":{"slidesToShow":1}}]'>
							<div class="tanajil-blog-item equal-element layout1">
								<div class="post-thumb">
									<a href="#"> <img
										src="${basePath}/resources/assets/images/x11.jpg" alt="img">
									</a>
									<div class="category-blog">
										<ul class="list-category">
											<li class="category-item"><a href="#">Skincare</a></li>
										</ul>
									</div>
									<div class="post-item-share">
										<a href="#" class="icon"> <i class="fa fa-share-alt"
											aria-hidden="true"></i>
										</a>
										<div class="box-content">
											<a href="#"> <i class="fa fa-facebook"></i>
											</a> <a href="#"> <i class="fa fa-twitter"></i>
											</a> <a href="#"> <i class="fa fa-google-plus"></i>
											</a> <a href="#"> <i class="fa fa-pinterest"></i>
											</a> <a href="#"> <i class="fa fa-linkedin"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="blog-info">
									<div class="blog-meta">
										<div class="post-date">Agust 17, 09:14 am</div>
										<span class="view"> <i class="icon fa fa-eye"
											aria-hidden="true"></i> 631
										</span> <span class="comment"> <i
											class="icon fa fa-commenting" aria-hidden="true"></i> 84
										</span>
									</div>
									<h2 class="blog-title">
										<a href="#">We bring you the best </a>
									</h2>
									<div class="main-info-post">
										<p class="des">Phasellus condimentum nulla a arcu lacinia,
											a venenatis ex congue. Mauris nec ante magna.</p>
										<a class="readmore" href="#">Read more</a>
									</div>
								</div>
							</div>
							<div class="tanajil-blog-item equal-element layout1">
								<div class="post-thumb">
									<a href="#"> <img
										src="${basePath}/resources/assets/images/x12.jpg" alt="img">
									</a>
									<div class="category-blog">
										<ul class="list-category">
											<li class="category-item"><a href="#">HOW TO</a></li>
										</ul>
									</div>
									<div class="post-item-share">
										<a href="#" class="icon"> <i class="fa fa-share-alt"
											aria-hidden="true"></i>
										</a>
										<div class="box-content">
											<a href="#"> <i class="fa fa-facebook"></i>
											</a> <a href="#"> <i class="fa fa-twitter"></i>
											</a> <a href="#"> <i class="fa fa-google-plus"></i>
											</a> <a href="#"> <i class="fa fa-pinterest"></i>
											</a> <a href="#"> <i class="fa fa-linkedin"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="blog-info">
									<div class="blog-meta">
										<div class="post-date">Agust 17, 09:14 am</div>
										<span class="view"> <i class="icon fa fa-eye"
											aria-hidden="true"></i> 631
										</span> <span class="comment"> <i
											class="icon fa fa-commenting" aria-hidden="true"></i> 84
										</span>
									</div>
									<h2 class="blog-title">
										<a href="#">We know that buying Cars</a>
									</h2>
									<div class="main-info-post">
										<p class="des">Using Lorem Ipsum allows designers to put
											together layouts and the form content</p>
										<a class="readmore" href="#">Read more</a>
									</div>
								</div>
							</div>
							<div class="tanajil-blog-item equal-element layout1">
								<div class="post-thumb">
									<div class="video-tanajil-blog">
										<figure>
											<img src="${basePath}/resources/assets/images/x13.jpg"
												alt="img" width="370" height="280">
										</figure>
										<a class="quick-install" href="#" data-videosite="vimeo"
											data-videoid="134060140"></a>
									</div>
									<div class="category-blog">
										<ul class="list-category">
											<li class="category-item"><a href="#">VIDEO</a></li>
										</ul>
									</div>
									<div class="post-item-share">
										<a href="#" class="icon"> <i class="fa fa-share-alt"
											aria-hidden="true"></i>
										</a>
										<div class="box-content">
											<a href="#"> <i class="fa fa-facebook"></i>
											</a> <a href="#"> <i class="fa fa-twitter"></i>
											</a> <a href="#"> <i class="fa fa-google-plus"></i>
											</a> <a href="#"> <i class="fa fa-pinterest"></i>
											</a> <a href="#"> <i class="fa fa-linkedin"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="blog-info">
									<div class="blog-meta">
										<div class="post-date">Agust 17, 09:14 am</div>
										<span class="view"> <i class="icon fa fa-eye"
											aria-hidden="true"></i> 631
										</span> <span class="comment"> <i
											class="icon fa fa-commenting" aria-hidden="true"></i> 84
										</span>
									</div>
									<h2 class="blog-title">
										<a href="#">We design functional Cars</a>
									</h2>
									<div class="main-info-post">
										<p class="des">Risus non porta suscipit lobortis habitasse
											felis, aptent interdum pretium ut.</p>
										<a class="readmore" href="#">Read more</a>
									</div>
								</div>
							</div>
							<div class="tanajil-blog-item equal-element layout1">
								<div class="post-thumb">
									<a href="#"> <img
										src="${basePath}/resources/assets/images/x14.jpg" alt="img">
									</a>
									<div class="category-blog">
										<ul class="list-category">
											<li class="category-item"><a href="#">Skincare</a></li>
										</ul>
									</div>
									<div class="post-item-share">
										<a href="#" class="icon"> <i class="fa fa-share-alt"
											aria-hidden="true"></i>
										</a>
										<div class="box-content">
											<a href="#"> <i class="fa fa-facebook"></i>
											</a> <a href="#"> <i class="fa fa-twitter"></i>
											</a> <a href="#"> <i class="fa fa-google-plus"></i>
											</a> <a href="#"> <i class="fa fa-pinterest"></i>
											</a> <a href="#"> <i class="fa fa-linkedin"></i>
											</a>
										</div>
									</div>
								</div>
								<div class="blog-info">
									<div class="blog-meta">
										<div class="post-date">Agust 17, 09:14 am</div>
										<span class="view"> <i class="icon fa fa-eye"
											aria-hidden="true"></i> 631
										</span> <span class="comment"> <i
											class="icon fa fa-commenting" aria-hidden="true"></i> 84
										</span>
									</div>
									<h2 class="blog-title">
										<a href="#">We know that buying Cars</a>
									</h2>
									<div class="main-info-post">
										<p class="des">Class integer tellus praesent at torquent
											cras, potenti erat fames volutpat etiam.</p>
										<a class="readmore" href="#">Read more</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="instagram-wrapp">
		<div>
			<h3 class="custommenu-title-blog">
				<i class="flaticon-instagram" aria-hidden="true"></i>  Nintendo Switch  熱門遊戲
			</h3>
			<div class="tanajil-instagram">
				<div class="instagram owl-slick equal-container"
					data-slick='{"autoplay":false, "autoplaySpeed":1000, "arrows":false, "dots":false, "infinite":true, "speed":800, "rows":1}'
					data-responsive='[{"breakpoint":"2000","settings":{"slidesToShow":5}},{"breakpoint":"1200","settings":{"slidesToShow":4}},{"breakpoint":"992","settings":{"slidesToShow":3}},{"breakpoint":"768","settings":{"slidesToShow":2}},{"breakpoint":"481","settings":{"slidesToShow":2}}]'>
					<div class="item-instagram">
						<a href="#"> <img
							src="${basePath}/resources/assets/images/y25.jpg" alt="img">
						</a> <span class="text"> <i class="icon flaticon-instagram"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="item-instagram">
						<a href="#"> <img
							src="${basePath}/resources/assets/images/y26.jpg" alt="img">
						</a> <span class="text"> <i class="icon flaticon-instagram"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="item-instagram">
						<a href="#"> <img
							src="${basePath}/resources/assets/images/y27.jpg" alt="img">
						</a> <span class="text"> <i class="icon flaticon-instagram"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="item-instagram">
						<a href="#"> <img
							src="${basePath}/resources/assets/images/y28.jpg" alt="img">
						</a> <span class="text"> <i class="icon flaticon-instagram"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="item-instagram">
						<a href="#"> <img
							src="${basePath}/resources/assets/images/y29.jpg" alt="img">
						</a> <span class="text"> <i class="icon flaticon-instagram"
							aria-hidden="true"></i>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
<script>
	function doLogin() {
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
			url : url,
			type : "POST",
			contentType : "application/json",
			data : JSON.stringify(requestData),
			success : function(data, textStatus, xhr) {
				if (xhr.status === 200) {
					alert("登陸成功");
					console.log(data.requestBody);
					var userName = data.requestBody.userAccount;
					localStorage.setItem('userName', userName); 
		            localStorage.setItem('token', data.token);
		            
					window.location.href = "/tp2305.eShop/index";
				}
			},
			error : function(xhr, status, error) {
				console.log(xhr.responseText);
				alert("呼叫失敗: " + error);
			}
		});
	}
</script>
<script>
function logoutFunction(){
	Swal.fire({
		title : "會員成功登出",
		timer: 2000
	}).then((result) => {
		$("#logout").submit();
	});
}
</script>
</html>
