<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tanajil - shipping</title>
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
	href="${pageContext.request.contextPath}/resources/assets/css/pe-icon-7-stroke.css">
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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="inblog-page">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">Welcome to our online store!</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language">
						<div class="tanajil-language tanajil-dropdown">
							<a href="#" class="active language-toggle"
								data-tanajil="tanajil-dropdown"> <span> English (USD)
							</span>
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
						<c:choose>
							<c:when test="${not empty userName}">
								<li>Welcome, ${userName}!${userId}</li>
							</c:when>
							<c:otherwise>
								<li><a href="/tp2305.eShop/login">Login or Register</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
					<input type="hidden" id="userId" value="${userId}">

				</div>
			</div>
		</div>
		<div class="container">
			<div class="main-header">
				<div class="row">
					<div
						class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/index"> <img
								src="${pageContext.request.contextPath}/resources/assets/images/logo.png" alt="img">
							</a>
						</div>
					</div>
					<!-- <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category">
								<div class="form-content">
									<div class="category">
										<select title="cate" data-placeholder="All Categories"
											class="chosen-select" tabindex="1">
											<option value="United States">Accessories</option>
											<option value="United Kingdom">Interior</option>
											<option value="Afghanistan">Performance</option>
											<option value="Aland Islands">Sofas</option>
											<option value="Albania">New Arrivals</option>
											<option value="Algeria">Storage</option>
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
					</div> -->

					<!-- <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
						<div class="header-control"> -->
							<!-- <div
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
							</div> -->
							<!-- <div class="block-account block-header tanajil-dropdown">
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
														</label> <input type="submit" class="button" value="Login">
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
							</div> -->
							<!-- <a class="menu-bar mobile-navigation menu-toggle" href="#"> <span></span>
								<span></span> <span></span>
							</a> -->
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
									href="index.html" class="tanajil-menu-item-title" title="Home">Home</a>
									<span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="${pageContext.request.contextPath}/index">Home
												01</a></li>
										<li class="menu-item"><a href="home2.html">Home 02</a></li>
										<li class="menu-item"><a href="home3.html">Home 03</a></li>
									</ul></li>
								<li class="menu-item menu-item-has-children"><a
									href="gridproducts.html" class="tanajil-menu-item-title"
									title="Shop">Shop</a> <span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="gridproducts.html">Grid
												Fullwidth</a></li>
										<li class="menu-item"><a
											href="gridproducts_leftsidebar.html">Grid Left sidebar</a></li>
										<li class="menu-item"><a
											href="gridproducts_bannerslider.html">Grid Bannerslider</a></li>
										<li class="menu-item"><a href="listproducts.html">List</a>
										</li>
									</ul></li>
								<li class="menu-item  menu-item-has-children item-megamenu">
									<a href="#" class="tanajil-menu-item-title" title="Pages">Pages</a>
									<span class="toggle-submenu"></span>
									<div class="submenu mega-menu menu-page">
										<div class="row">
											<div
												class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												<div class="tanajil-custommenu default">
													<h2 class="widgettitle">Shop Pages</h2>
													<ul class="menu">
														<li class="menu-item"><a href="shoppingcart.html">Shopping
																Cart</a></li>
														<li class="menu-item"><a href="checkout.html">Checkout</a>
														</li>
														<li class="menu-item"><a href="contact.html">Contact
																us</a></li>
														<li class="menu-item"><a href="404page.html">404</a>
														</li>
														<li class="menu-item"><a href="login.html">Login/Register</a>
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
															href="productdetails-fullwidth.html">Product
																Fullwidth</a></li>
														<li class="menu-item"><a
															href="productdetails-leftsidebar.html">Product left
																sidebar</a></li>
														<li class="menu-item"><a
															href="productdetails-rightsidebar.html">Product right
																sidebar</a></li>
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
									class="tanajil-menu-item-title" title="Blogs">Blogs</a> <span
									class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item menu-item-has-children"><a href="#"
											class="tanajil-menu-item-title" title="Blog Style">Blog
												Style</a> <span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a href="bloggrid.html">Grid</a>
												</li>
												<li class="menu-item"><a href="bloglist.html">List</a>
												</li>
												<li class="menu-item"><a
													href="bloglist-leftsidebar.html">List Sidebar</a></li>
											</ul></li>
										<li class="menu-item menu-item-has-children"><a href="#"
											class="tanajil-menu-item-title" title="Post Layout">Post
												Layout</a> <span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a
													href="inblog_left-siderbar.html">Left Sidebar</a></li>
												<li class="menu-item"><a
													href="inblog_right-siderbar.html">Right Sidebar</a></li>
											</ul></li>
									</ul></li>
								<li class="menu-item"><a href="about.html"
									class="tanajil-menu-item-title" title="About">About</a></li>
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
					<a href="#"> <img src="${pageContext.request.contextPath}/resources/assets/images/logo.png" alt="img">
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
	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="/tp2305.eShop/index">Home</a>
							</li>
							<li class="trail-item trail-end active">Authentication</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">購物車</h3>
						<div class="customer_login">
<!-- ------------------------------------------------------------------------------------------->

							<div class="product">
								<img src="product1.jpg" alt="測試商品">
								<p id="productName" >測試商品</p>
								<p id="price">100</p>								
								<button onclick="addToCart()">加入購物車</button>
							</div>
							<br>

							<table>
								<thead>
								  <tr>
									<th>選取</th>
									<th>商品名稱</th>
									<th>價錢</th>
									<th>數量</th>
									<th>員編</th>
									<th></th>
								  </tr>
								</thead>								
								<c:forEach var="shipping" items="${shippings}">										
								<tr data-num="${shipping.productid}">
									<td><input class="checkboxs" type="checkbox" onchange="updateCart(this)" style="display: initial" ></td>
									<td id="shipping_name">${shipping.product_name}</td>
									<td id="shipping_price">${shipping.product_price}</td>
									<td>
										<span class="input-number-decrement">-</span>
										<input class="input-number" type="text" value=${shipping.product_quantity} min="1" max="500" style="width: 80px">
										<span class="input-number-increment">+</span>
									</td>
									<!-- <td id="shipping_id">${shipping.memberid}</td> -->
									<td id="productid_id">${shipping.productid}</td>
									<td><button onclick="deleteShipp(this)">刪除</button></td>
								  </tr>
								</c:forEach>	
							</table>							

							<h2></h2>
							<div id="cart">
								
								<h3>總金額: <span id="totalprice"></span></h3>
							</div>
						
<!-- ----------------------------結帳--------------------------------------->
							<button id="checkout-btn">結帳</button>
  
							<div id="checkout-popup" style="z-index: 98;">
							  <button id="close-btn" style="color: black; z-index: 98;">&times;</button>
							  <div id="detail">結帳明細</div>
								<div id="cart2">	</div>
								<label for="name">名字:</label>	<br>
								<input type="text" id="name" required>
								<br>
								<label for="phone">電話:</label><br>	
								<input type="tel" id="phone" required>
								<br>
								<label for="address">收件地址:</label><br>
								<input type="text" id="address" required>
								<br>
								<label for="email">電子信箱:</label><br>
								<input type="text" id="email" required>
								<br>								
								<label for="payment">付款方式:</label>
								<select id="payment">
									<option value="貨到付款">貨到付款</option>
									<option value="匯款">匯款</option>
								</select>
								<br>
								<button onclick="testtt()">test</button>
								<button onclick="letbuyyy()">確定</button>
							</div>
							  		
<script>

	var decrementButtons = document.querySelectorAll('.input-number-decrement');
	var incrementButtons = document.querySelectorAll('.input-number-increment');
	var inputNumbers = document.querySelectorAll('.input-number');
	var divnums = document.querySelectorAll('tr[data-num]');
	var checkboxes = document.getElementsByClassName('checkboxs');
	








// 刪除按鈕
	function deleteShipp(button) {
    var parentRow = button.parentNode.parentNode;
    var productId = parentRow.getAttribute('data-num');
    parentRow.remove();

	$.ajax({
				url: '/tp2305.eShop/deleteshipp',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify(productId),
				
				success: function(response) {
					alert("成功mid：" + productId);
					console.log(JSON.stringify(productId));
				},
				error: function(xhr, status, error) {
					alert("失敗哭哭><" + error);
					console.log(JSON.stringify(productId));
				}
			});
}

// checkbox 功能
	function updateCart(checkbox) {
    var parentRow = checkbox.parentNode.parentNode;
    var productName = parentRow.querySelector('#shipping_name').innerText;
	var productPrice = parentRow.querySelector('#shipping_price').innerText;
    var quantity = parseInt(parentRow.querySelector('.input-number').value);
    var total = 0;
    var itemTotal = parseFloat(productPrice) * quantity;

    if (checkbox.checked) {
        var cartItem = document.createElement('li');

        var pname = document.createElement('span');
        pname.classList.add('pnamee');
        pname.textContent = productName;

        var x = document.createElement('span');
        x.textContent = ' X ';

        var pqutyy = document.createElement('span');
        pqutyy.classList.add('pqutyy');
        pqutyy.textContent = quantity;

        var equals = document.createElement('span');
        equals.textContent = ' = ';

        var totalmm = document.createElement('span');
        totalmm.classList.add('totalmm');
        totalmm.textContent = itemTotal;

        cartItem.appendChild(pname);
        cartItem.appendChild(x);
        cartItem.appendChild(pqutyy);
        cartItem.appendChild(equals);
        cartItem.appendChild(totalmm);

        document.getElementById('cart').appendChild(cartItem);
    } else {
        var cartItems = document.getElementById('cart').getElementsByTagName('li');
        for (var i = 0; i < cartItems.length; i++) {
            if (cartItems[i].textContent.includes(productName)) {
                cartItems[i].remove();
                break;
            }
        }
    }
    

    // Calculate the total price
	var cartItems = document.getElementById('cart').getElementsByTagName('li');
	var total = 0; // Set total to 0
	for (var i = 0; i < cartItems.length; i++) {
		var itemPrice = parseFloat(cartItems[i].textContent.split(' = ')[1]);
		total += itemPrice;
	}

    // Update the total price element
    document.getElementById('totalprice').textContent = total;
	// document.getElementById('totalprice').textContent = total.toFixed(2);
}

//數量減一
	decrementButtons.forEach(function(button, index) {
		button.addEventListener('click', function() {
			var value = parseInt(inputNumbers[index].value);			
			
			if (value > parseInt(inputNumbers[index].getAttribute('min'))) {
				inputNumbers[index].value = value - 1;
			}

			var num = divnums[index].getAttribute('data-num');

			$.ajax({
				url: '/tp2305.eShop/subonee',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify(num),
				
				success: function(response) {
					alert("成功mid：" + num);
					console.log(JSON.stringify(num));
				},
				error: function(xhr, status, error) {
					alert("失敗哭哭><" + error);
					console.log(JSON.stringify(num));
				}
			});
		});
	});
	
//數量加一
	incrementButtons.forEach(function(button, index) {
		button.addEventListener('click', function() {
			var value = parseInt(inputNumbers[index].value);			

			if (value < parseInt(inputNumbers[index].getAttribute('max'))) {
				inputNumbers[index].value = value + 1;
			}

			var num = divnums[index].getAttribute('data-num');
			
			$.ajax({
				url: '/tp2305.eShop/addonee',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify(num),
				
				success: function(response) {
					alert("成功mid：" + num);
					console.log(JSON.stringify(num));
				},
				error: function(xhr, status, error) {
					alert("失敗哭哭><" + error);
					console.log(JSON.stringify(num));
				}
			});
		});
	});

	// <!-- ----------------------------結帳--------------------------------------->


	document.getElementById("checkout-btn").addEventListener("click", function() {
  	document.getElementById("checkout-popup").style.display = "block";
  	const cartContent = document.getElementById("cart").innerHTML;
    document.getElementById("cart2").innerHTML = cartContent;
});

document.getElementById("close-btn").addEventListener("click", function() {
  document.getElementById("checkout-popup").style.display = "none";
});





//----------------------------------------------確定結帳--------------------------------------
function letbuyyy() {
      var name = $('#name').val();
      var phone = $('#phone').val();
      var address = $('#address').val();
	  var purchasetotal = document.getElementById('totalprice').textContent;
	  var selectElement = document.getElementById("payment");
	  var email = $('#email').val();
	  var payment = selectElement.value;
	  var member_id = document.getElementById('userId').value;
	  

	  var now = new Date();
	  var purchaseid = now.getFullYear().toString() +
                 padZero(now.getMonth() + 1) +
                 padZero(now.getDate()) +
                 padZero(now.getHours()) +
                 padZero(now.getMinutes()) +
                 padZero(now.getSeconds())+member_id;

				 function padZero(value) {
    	return value < 10 ? "0" + value : value;
	}



	  var detail = {		
		purchaseid:purchaseid,
		purchasetotal:purchasetotal,
		ordername: name,
		orderphone: phone,
        orderaddress: address,
		orderemail: email,
		payment:payment,
		// totalprice
	};	

      $.ajax({
        url: '/tp2305.eShop/letsbuyy',
        method: 'POST',
		contentType: 'application/json',
        data: JSON.stringify(detail),
         
        success: function(response) {
			document.getElementById("checkout-popup").style.display = "none";
			console.log(detail);         
        },
        error: function(xhr, status, error) {
			console.error(detail);          
        }
      });   
	  
	//   --------------------------存商品資料--------------------------------------

	var cartItems = document.getElementById('cart').getElementsByTagName('li');
	var cartData = [];

	for (var i = 0; i < cartItems.length; i++) {
	var cartItem = cartItems[i];
	var spans = cartItem.getElementsByTagName('span');

	var itemName = spans[0].textContent;
	var quantity = parseInt(spans[2].textContent);
	var productprice = parseFloat(spans[4].textContent);
	var productid = document.getElementById('productid_id').textContent;

	var cartItemData = {
		purchaseid:purchaseid,
		productid:productid,
		productname: itemName,
		productquantity: quantity,
		productprice: productprice
	};

	cartData.push(cartItemData);
	}

	$.ajax({
        url: '/tp2305.eShop/letsbuyinfooo',
        method: 'POST',
		contentType: 'application/json',
        data: JSON.stringify(cartData),
         
        success: function(response) {
			document.getElementById("checkout-popup").style.display = "none";
			console.log(cartData);         
        },
        error: function(xhr, status, error) {
			console.error(cartData);          
        }
      });   

	  
};












// function testtt() {
// 	var cartItems = document.getElementById('cart').getElementsByTagName('li');
// var cartData = [];

// for (var i = 0; i < cartItems.length; i++) {
//   var cartItem = cartItems[i];
//   var spans = cartItem.getElementsByTagName('span');

//   var itemName = spans[0].textContent;
//   var quantity = parseInt(spans[2].textContent);
//   var itemTotal = parseFloat(spans[4].textContent);

//   var cartItemData = {
//     name: itemName,
//     quantity: quantity,
//     total: itemTotal
//   };

//   cartData.push(cartItemData);
// }

// console.log(cartData);
// console.log("太神拉!!!!");
// };

function addToCart() {
		
		var productName = document.getElementById('productName').textContent;
		var price = document.getElementById('price').textContent;		
		var member_id = document.getElementById('userId').value;

		var product = {
			product_id:6,
			member_id:member_id,
			product_name: productName,
			product_quantity: price,
			product_quantity:10,			
			product_state : "還沒買",			
		};	
		
		
		$.ajax({
			url: '/tp2305.eShop/addCart',
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(product),
			
			success: function(response) {
			alert("成功將商品添加到購物車！ 商品名稱：" + productName + "，價格：" + price);
			console.log(JSON.stringify(product));
			},
			error: function(xhr, status, error) {
			alert("無法添加商品到購物車。錯誤訊息：" + error);
			console.log(JSON.stringify(product));
			}
		});
	
}





</script>




<!-- ------------------------------------------------------------------------------------------->
		
							
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
								<a href="${pageContext.request.contextPath}/index"><img
									src="${pageContext.request.contextPath}/resources/assets/images/logo-light.png"
									alt="img"></a>
							</div>
							<ul class="menu">
								<li class="menu-item"><a href="#"><span
										class="flaticon-placeholder"></span>45 Grand Central Terminal
										New York,NY 1017 United State USA</a></li>
								<li class="menu-item"><a href="#"><span
										class="fa fa-phone"></span>(+123) 456 789 - (+123) 666 888</a></li>
								<li class="menu-item"><a href="#"><span
										class="fa fa-envelope-o"></span>Contact@yourcompany.com</a></li>
								<li class="menu-item"><a href="#"><span
										class="flaticon-clock"></span>Mon-Sat 9:00pm - 5:00pm Sun :
										Closed</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="tanajil-custommenu default">
							<h2 class="widgettitle">Quick Menu</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">New arrivals</a></li>
								<li class="menu-item"><a href="#">Life style</a></li>
								<li class="menu-item"><a href="#">Interior</a></li>
								<li class="menu-item"><a href="#">Lighting</a></li>
								<li class="menu-item"><a href="#">Wheels</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="tanajil-custommenu default">
							<h2 class="widgettitle">Information</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">FAQs</a></li>
								<li class="menu-item"><a href="#">Track Order</a></li>
								<li class="menu-item"><a href="#">Delivery</a></li>
								<li class="menu-item"><a href="#">Contact Us</a></li>
								<li class="menu-item"><a href="#">Return</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="tanajil-newsletter style1">
							<div class="newsletter-head">
								<h3 class="title">Newsletter</h3>
							</div>
							<div class="newsletter-form-wrap">
								<div class="list">Get notified of new products, limited
									releases, and more.</div>
								<input type="email" class="input-text email email-newsletter"
									placeholder="Your email letter">
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
								Copyright © 2019 <a href="http://www.bootstrapmb.com/">Tanajil</a>
								. All rights reserved
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="tanajil-payment">
								<img src="${pageContext.request.contextPath}/resources/assets/images/payments.png"
									alt="img">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>

<script>

function formatDateTime(date) {
  var year = date.getFullYear();
  var month = padNumber(date.getMonth() + 1);
  var day = padNumber(date.getDate());
  var hours = padNumber(date.getHours());
  var minutes = padNumber(date.getMinutes());
  var seconds = padNumber(date.getSeconds());

  return year + month + day + ' ' + hours + minutes + seconds;
}
// 函式用於確保數字有兩位數，如果只有一位數，則在前面補零。
function padNumber(number) {
//方法1
  return number.toString().padStart(2, '0');	
//方法2
//   return (number < 10) ? '0' + number : number;	
}


// let name = $('#username').val();
// let password = $('#password').val();
// let queryObj = {
// NAME:name,
// PASSWORD:password
// };

//  let url =  "http://localhost:8080/tp2305.eShop/login";
//  console.log(url);
// $.ajax({
// url: url,
// type: "POST",
// //data: {
// // sqlString: JSON.stringify("SELECT * FROM Employee;")
// //}, 

// contentType: 'application/json',
// data: JSON.stringify(queryObj),
// success: function(dataList) {
// alert("成功");
// // grid.load(JSON.parse(dataList||'[]'));
// },
// error: function(xhr, status, error) {
// console.log(JSON.stringify(queryObj));
// alert('呼叫失敗', error);
// }
// });
// }




</script>

<style>

	.input-number {
	width: 80px;
	padding: 0 12px;
	vertical-align: top;
	text-align: center;
	outline: none;
	}
	.input-number,.input-number-decrement,.input-number-increment{
	border: 1px solid #cccccc;
	height: 40px;
	user-select: none;
	}
	.input-number-decrement,.input-number-increment {
	display: inline-block;
	width: 30px;
	line-height: 38px;
	color: #444444;
	text-align: center;
	font-weight: bold;
	cursor: pointer;
	background: #dddddd;
	}
	


	/* // <!-- ----------------------------結帳---------------------------------------> */




	#checkout-popup {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: white;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  display: none;
}

#checkout-popup form {
  display: flex;
  flex-direction: column;
}

#checkout-popup label {
  margin-bottom: 10px;
}

#checkout-popup input {
  margin-bottom: 20px;
}

#checkout-popup button[type="submit"] {
  margin-top: 10px;
}

#checkout-popup #close-btn {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 20px;
  border: none;
  background-color: transparent;
  cursor: pointer;
}
	
	</style>


</html>