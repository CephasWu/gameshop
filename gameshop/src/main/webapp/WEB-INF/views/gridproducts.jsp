<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>商品瀏覽四排</title>
<jsp:include page="layout/import.jsp"></jsp:include>
</head>
<body class="productsgrid-page">
	<jsp:include page="layout/header.jsp"></jsp:include>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"> <img src="assets/images/logo.png" alt="img">
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
	<div class="main-content main-content-product no-sidebar">
		<div class="container">
			<div class="row">
				<div
					class="content-area shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<div class="shop-top-control">
							<form class="select-item select-form">
								<span class="title">Sort</span> <select title="sort"
									data-placeholder="9 Products/Page" class="chosen-select">
									<option value="2">9 Products/Page</option>
									<option value="1">12 Products/Page</option>
									<option value="3">10 Products/Page</option>
									<option value="4">8 Products/Page</option>
									<option value="5">6 Products/Page</option>
								</select>
							</form>
							<form class="filter-choice select-form">
								<span class="title">Sort by</span> <select title="sort-by"
									data-placeholder="Price: Low to High" class="chosen-select">
									<option value="1">Price: Low to High</option>
									<option value="2">Sort by popularity</option>
									<option value="3">Sort by average rating</option>
									<option value="4">Sort by newness</option>
									<option value="5">Sort by price: low to high</option>
								</select>
							</form>
							<div class="grid-view-mode">
								<div class="inner">
									<a href="listproducts.html" class="modes-mode mode-list"> <span></span>
										<span></span>
									</a> <a href="gridproducts.html"
										class="modes-mode mode-grid  active"> <span></span> <span></span>
										<span></span> <span></span>
									</a>
								</div>
							</div>
						</div>
						<ul
							class="row list-products auto-clear equal-container product-grid">

							<c:forEach var="product" items="${products}">
								<li
									class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
									<div class="product-inner equal-element">
										<div class="product-top">
											<div class="flash">
												<span class="onnew"> <span class="text">${product.product_Id}</span>
												</span>
											</div>
										</div>
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="${basePath}/productdetails/${product.product_Id}">
													<img style="height: 235px;"
													src="${basePath}/resources/assets/games/${product.product_Photo}"
													alt="img">
												</a>
												<div class="thumb-group">
													<div class="yith-wcwl-add-to-wishlist">
														<div class="yith-wcwl-add-button">
															<a href="${basePath}/productdetails">${product.product_Name}</a>
														</div>
													</div>
													<a href="${basePath}/productdetails"
														class="button quick-wiew-button">Quick View</a>
													<div class="loop-form-add-to-cart">
														<button class="single_add_to_cart_button button">Add
															to cart</button>
													</div>
												</div>
											</div>
										</div>
										<div class="product-info">
											<h5 class="product-name product_title">
												<a href="${basePath}/productdetails">${product.product_Name}</a>
											</h5>
											<div class="group-info">
												<div>類型:${product.product_Type}</div>
												<div class="price">
													<ins> 價格:${product.product_Price} </ins>
												</div>

												<del>剩餘數量:${product.product_Count}</del>

											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>

						<%--<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
							<c:choose>
								<c:when test="${pageNumber-1 != page.number }">
									<a href="${contextRoot}/movie/mct/page?p=${pageNumber}"
										class="btn btn-primary"> ${pageNumber}</a>
								</c:when>

								<c:otherwise>  ${pageNumber}  </c:otherwise>

							</c:choose>
							<c:if test="${pageNumber != page.totalPages}">   🍿  </c:if>
						</c:forEach>--%>
						
						
						<div class="pagination clearfix style2">
							<div class="nav-link">
								<a href="#" class="page-numbers"><i
									class="icon fa fa-angle-left" aria-hidden="true"></i></a> <a
									href="#" class="page-numbers current">1</a> <a href="#"
									class="page-numbers">2</a> <a href="#"
									class="page-numbers">3</a> <a href="#"
									class="page-numbers"><i class="icon fa fa-angle-right"
									aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="wrapper-sidebar shop-sidebar">
						<div class="widget woof_Widget">
							<div class="widget widget-categories">
								<h3 class="widgettitle">Categories</h3>
								<ul class="list-categories">
									<li><input type="checkbox" id="cb1"> <label
										for="cb1" class="label-text"> New Arrivals </label></li>
									<li><input type="checkbox" id="cb2"> <label
										for="cb2" class="label-text"> Wheels </label></li>
									<li><input type="checkbox" id="cb3"> <label
										for="cb3" class="label-text"> Performance </label></li>
									<li><input type="checkbox" id="cb4"> <label
										for="cb4" class="label-text"> Interior </label></li>
									<li><input type="checkbox" id="cb5"> <label
										for="cb5" class="label-text"> Accessories </label></li>
									<li><input type="checkbox" id="cb6"> <label
										for="cb6" class="label-text"> Lighting </label></li>
								</ul>
							</div>
							<div class="widget widget_filter_price">
								<h4 class="widgettitle">Price</h4>
								<div class="price-slider-wrapper">
									<div data-label-reasult="Range:" data-min="0" data-max="3000"
										data-unit="$" class="slider-range-price " data-value-min="0"
										data-value-max="1000"></div>
									<div class="price-slider-amount">
										<span class="from">$45</span> <span class="to">$215</span>
									</div>
								</div>
							</div>
							<div class="widget widget-brand">
								<h3 class="widgettitle">Brand</h3>
								<ul class="list-brand">
									<li><input id="cb7" type="checkbox"> <label
										for="cb7" class="label-text">New Arrivals</label></li>
									<li><input id="cb8" type="checkbox"> <label
										for="cb8" class="label-text">Wheels</label></li>
									<li><input id="cb9" type="checkbox"> <label
										for="cb9" class="label-text">Performance</label></li>
									<li><input id="cb10" type="checkbox"> <label
										for="cb10" class="label-text">Interior</label></li>
									<li><input id="cb11" type="checkbox"> <label
										for="cb11" class="label-text">Accessories</label></li>
									<li><input id="cb12" type="checkbox"> <label
										for="cb12" class="label-text">Lighting</label></li>
								</ul>
							</div>
							<div class="widget widget_filter_size">
								<h4 class="widgettitle">Size</h4>
								<ul class="list-size">
									<li><a href="#">xs</a></li>
									<li><a href="#">s</a></li>
									<li class="active"><a href="#">m</a></li>
									<li><a href="#">l</a></li>
									<li><a href="#">xl</a></li>
									<li><a href="#">xxl</a></li>
								</ul>
							</div>
							<div class="widget widget-color">
								<h4 class="widgettitle">Color</h4>
								<div class="list-color">
									<a href="#" class="color1"></a> <a href="#" class="color2 "></a>
									<a href="#" class="color3 active"></a> <a href="#"
										class="color4"></a> <a href="#" class="color5"></a> <a
										href="#" class="color6"></a> <a href="#" class="color7"></a>
								</div>
							</div>
							<div class="widget widget-tags">
								<h3 class="widgettitle">Popular Tags</h3>
								<ul class="tagcloud">
									<li class="tag-cloud-link"><a href="#">Repair parts</a></li>
									<li class="tag-cloud-link"><a href="#">Interior</a></li>
									<li class="tag-cloud-link"><a href="#">Body Parts</a></li>
									<li class="tag-cloud-link active"><a href="#">Accessories</a>
									</li>
									<li class="tag-cloud-link"><a href="#">Hot</a></li>
									<li class="tag-cloud-link"><a href="#">Lighting</a></li>
									<li class="tag-cloud-link"><a href="#">Wheels</a></li>
								</ul>
							</div>
						</div>
						<div class="widget newsletter-widget">
							<div class="newsletter-form-wrap ">
								<h3 class="title">Subscribe to Our Newsletter</h3>
								<div class="subtitle">More special Deals, Events &
									Promotions</div>
								<input type="email" class="email"
									placeholder="Your email letter">
								<button type="submit" class="button submit-newsletter">Subscribe</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>
