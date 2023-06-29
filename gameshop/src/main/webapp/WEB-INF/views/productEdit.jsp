<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<title>商品編輯</title>
<jsp:include page="layout/import.jsp"></jsp:include>
</head>
<body class="inblog-page">
	<jsp:include page="layout/header.jsp"></jsp:include>
	<div class="main-content main-content-details single no-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.html">Home</a>
							</li>
							<li class="trail-item"><a href="#">${product.product_Type}</a></li>
							<li class="trail-item trail-end active">${product.product_Name}</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">商品編輯</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">商品資料</h5>

										<form  class="register" method="post"
											action="${basePath}/productEditSuccess" enctype="multipart/form-data">

											<p class="form-row form-row-wide">
												<label for="product_Id">product_Id:</label> <input
													id="product_Id" name="product_Id" type="text"
													placeholder="${product.product_Id}"
													value="${product.product_Id}" readonly>
											</p>
											<p class="form-row form-row-wide">
												<label for="product_Name" class="text">1.product_Name:</label>
												<input id="product_Name" name="product_Name"
													placeholder="${product.product_Name}"
													value="${product.product_Name}" type="text"
													class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">2.product_Type:</label> <input
													id="product_Type" name="product_Type"
													placeholder="${product.product_Type}"
													value="${product.product_Type}" type="text"
													class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">3.product_Price:</label> <input
													id="product_Price" name="product_Price"
													placeholder="${product.product_Price}"
													value="${product.product_Price}" type="text"
													class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">4.product_Count:</label> <input
													id="product_Count" name="product_Count"
													placeholder="${product.product_Count}"
													value="${product.product_Count}" type="text"
													class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">5.product_Photo:</label> <input
													id="product_Photo" name="product_Photo"
													placeholder="${product.product_Photo}"
													value="${product.product_Photo}" type="text"
													class="input-text">
											</p>

											<p class="">
												<input type="submit" class="button-submit" value="編輯商品">
											</p>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="details-product">
										<div class="details-thumd">
											<div
												class="image-preview-container image-thick-box image_preview_container">
												<img id="img_zoom"
													data-zoom-image="${basePath}/resources/assets/games/${product.product_Photo}"
													src="${basePath}/resources/assets/games/${product.product_Photo}"
													alt="img"> <a href="#" class="btn-zoom open_qv"><i
													class="fa fa-search" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
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