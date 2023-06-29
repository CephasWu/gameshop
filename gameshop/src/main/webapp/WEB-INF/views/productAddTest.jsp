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
			<h3 class="custom_blog_title">新增商品</h3>

			<label for="product_Name">1.product_Name:</label> 
			<input id="product_Name" value="NS_Switch_薩爾達王國之淚" type="text" required> <br>  
				
			<label for="product_Type">2.product_Type:</label> 
			<input id="product_Type" value="video game" type="text" required> <br> 
				
			<label for="product_Price">3.product_Price:</label>
			<input id="product_Price" value="2120" type="text" required> <br>

			<label for="product_Count">4.product_Count:</label> 
			<input id="product_Count" value="11" type="text" required> <br>

			<label for="product_Photo">5.product_Photo:</label> 
			<input id="product_Photo" value="NS_Switch_薩爾達王國之淚.jpg" type="text" required> <br>

			<button onclick="add()">新增商品</button>
		
			<script>
				function add() {

					var product_Name = $('#product_Name').val();
					var product_Type = $('#product_Type').val();
					var product_Price = $('#product_Price').val();
					var product_Count = $('#product_Count').val();
					var product_Photo = $('#product_Photo').val();

					var detail = {
							product_Name : product_Name,
							product_Type : product_Type,
							product_Price : product_Price,
							product_Count : product_Count,
							product_Photo : product_Photo
					};
					$.ajax({
						url : '/tp2305.eShop/letsbuyy2',
						method : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(detail),

						success : function(response) {
							console.log(response);
							// 在這裡處理成功請求的相應邏輯
						},
						error : function(xhr, status, error) {
							console.error(error);
							// 在這裡處理請求失敗的情況
						}
					});

					// 在這裡處理提交表單的邏輯
					// 可以獲取輸入的名字、電話和地址等數據，並進行後續處理
					// 當完成處理後，可以隱藏浮動框框，例如：document.getElementById("checkout-popup").style.display = "none";
				};
			</script>
			
			<div id="detail">test</div>
			<label for="name">名字:</label> <input type="text" id="name" required>
			<br> <label for="phone">電話:</label> <input type="tel" id="phone"
				required> <br> <label for="address">收件地址:</label> <input
				type="text" id="address" required> <br>
			<button onclick="add2()">確定</button>
		</div>



		<script>
			function add2() {

				var name = $('#name').val();
				var phone = $('#phone').val();
				var address = $('#address').val();

				var detail = {
					ordername : name,
					orderphone : phone,
					orderaddress : address
				};
				$.ajax({
					url : '/tp2305.eShop/letsbuyy',
					method : 'POST',
					contentType : 'application/json',
					data : JSON.stringify(detail),

					success : function(response) {
						console.log(response);
						// 在這裡處理成功請求的相應邏輯
					},
					error : function(xhr, status, error) {
						console.error(error);
						// 在這裡處理請求失敗的情況
					}
				});

				// 在這裡處理提交表單的邏輯
				// 可以獲取輸入的名字、電話和地址等數據，並進行後續處理
				// 當完成處理後，可以隱藏浮動框框，例如：document.getElementById("checkout-popup").style.display = "none";
			};
		</script>
			
		</div>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>