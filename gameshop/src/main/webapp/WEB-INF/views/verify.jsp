<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style type="text/css">
.form-gap {
	padding-top: 70px;
}
</style>
</head>

<body>
	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<label><img
							src="${pageContext.request.contextPath}/resources/assets/images/logo.png"
							alt="" style="width: 200px; margin: 0 0 0 68px"></label>
						<div class="text-center">
							<h1>註冊驗證系統</h1>
							<h2 class="text-center">請輸入信箱註冊驗證碼</h2>
							<div class="panel-body">

								<form id="register-form" role="form" autocomplete="off"
									class="form" method="post" name="registerForm">

									<div class="form-group">
										<div class="input-group">

											<input class="input" type="text" required="required"
												maxlength="1" id="password_1">
											</input> 
											<input class="input" type="text" required="required" 
												maxlength="1" id="password_2">
											</input> 
											<input class="input" type="text"
												required="required" maxlength="1" id="password_3">
											</input> 
											<input	class="input" type="text" required="required" 
												maxlength="1" id="password_4">
											</input> 
											<input class="input" type="text" required="required" 
												maxlength="1" id="password_5">
											</input>
										</div>
									</div>
									<div class="form-group">
										<input id="sendOTP" name="recover-submit"
											class="btn btn-lg btn-primary btn-block" value="驗證會員"
											type="button" onclick="verifyFunction()">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<style>
body {
	font-family: "微軟正黑體";
	background-color: #eee;
}

.input {
	text-align: center;
	font-size: 30px;
	width: 50px;
	height: 50px;
	margin: 0 0px 0 8.5px;
}
</style>
<script>
function verifyFunction() {
	let password_1 = $('#password_1').val();
	let password_2 = $('#password_2').val();
	let password_3 = $('#password_3').val();
	let password_4 = $('#password_4').val();
	let password_5 = $('#password_5').val();
let password=password_1+password_2+password_3+password_4+password_5;
	if (password_1.length==0
			|| password_2.length==0
			|| password_3.length==0
			|| password_4.length==0
			|| password_5.length==0) {
		Swal.fire({
			title : "驗證碼輸入請勿空白)",
			customClass : "styleTitle"
		});
		return false;
	}
	
	let queryObj = {
			PASSWORD : password
	};

	let url = "/tp2305.eShop/userCreate";
	$.ajax({
		async : false,
		url : url,
		type : "POST",
		contentType : 'application/json',
		data : JSON.stringify(queryObj),
            success: function(data, textStatus, xhr) {
                if (xhr.status == 200) {
				Swal.fire({
					title : "此帳號已啟用",
					customClass : "styleTitle",
					timer: 2000
				}).then((result) => {
					window.location.href = "/tp2305.eShop/index"; 
					});
			}
			else {
				Swal.fire({
					title : "驗證碼錯誤，請重新輸入",
					customClass : "styleTitle",
					timer: 2000
				});

			}
		},
		error : function(xhr, status, error) {
			console.log(JSON.stringify(queryObj));
			Swal.fire({
				title : "資料庫連線失敗，請重新操作",
				customClass : "styleTitle"
			});
		}
	});
	return false;
}
</script>
<style>
.styleTitle {
	font-size: 16px;
	width: auto;
}
</style>
</html>
