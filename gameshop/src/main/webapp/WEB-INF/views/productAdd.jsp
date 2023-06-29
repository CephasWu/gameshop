<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<title>新增單筆商品</title>
<jsp:include page="layout/import.jsp"></jsp:include>
</head>
<body class="inblog-page">
	<jsp:include page="layout/header.jsp"></jsp:include>

	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.html">Home</a>
							</li>
							<li class="trail-item trail-end active">新增商品</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">新增商品</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<h5 class="title-login">商品資料</h5>

										<form modelAttribute="product" class="register" method="post"
											action="${basePath}/productAddSuccess">

											<p class="form-row form-row-wide">
												<label class="text">1.product_Name:</label> <input
													path="product_Name" value="NS_Switch_薩爾達王國之淚"
													name="product_Name" type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">2.product_Type:</label> <input
													path="product_Type" value="video game" name="product_Type"
													type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">3.product_Price:</label> <input
													path="product_Price" value="2120" name="product_Price"
													type="text" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">4.product_Count:</label> <input
													path="product_Count" value="11" type="text"
													name="product_Count" class="input-text">
											</p>
											<p class="form-row form-row-wide">
												<label class="text">5.product_Photo:</label> <input
													path="product_Photo" value="NS_Switch_薩爾達王國之淚.jpg"
													name="product_Photo" type="text" class="input-text">
											</p>
											<p class="">
												<input type="submit" class="button-submit" value="新增商品">
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
	</div>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>

</html>