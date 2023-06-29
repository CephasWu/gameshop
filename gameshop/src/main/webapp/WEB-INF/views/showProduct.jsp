<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>周邊商品</title>
<jsp:include page="layout/import.jsp"></jsp:include>

<!-- <link rel="stylesheet" href="css/carousel.css"> -->
<%-- <link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" /> --%>
<link rel="stylesheet" href="${contextRoot}/shoppingAssets/css/product.css" />
<style type="text/css">

</style>
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
		<div class="main-content main-content-product left-sidebar">
			<div class="container">
				<div class="row home">
					<div class="col-lg-12">
						<div class="breadcrumb-trail breadcrumbs bread">
							<ul class="trail-items breadcrumb">
								<li class="trail-item trail-begin"><a
									href="${contextRoot}/">首頁</a></li>
								<li class="trail-item trail-end active">周邊商品</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row row-1">
					<div
						class="content-area shop-grid-content no-banner col-lg-9 col-md-9 col-sm-12 col-xs-12">
						<div class="site-main">

						<jsp:include page="productTop.jsp"></jsp:include>
							

					
												
						<!-- 列出商品 -->
						<div id="viewLike">
							<ul class="row list-products auto-clear equal-container product-grid" >

								<c:forEach var="product" items="${page.content}">
								
									<li class="product-item  col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
									<form id="addcartform" action="${contextRoot}/shopping/addCart" method="post" enctype="multipart/form-data">										
										<div class="product-inner equal-element">
											<div class="product-thumb" style="height: 280px">
												<div class="thumb-inner">
												<input type='hidden' name="productId" id="productId" value='${product.pID}'
													class="visually-hidden" /> 
												<input type='hidden' value="1"
													name="quantity" id="quantity" class="visually-hidden" />
													<a href="${contextRoot}/shopping/product/${product.pID}"> <img src="${product.pPhoto}" onerror="javascript:this.src='https://fakeimg.pl/100/?text=image'" class="img" alt="${product.pName}圖片">
													</a>
													<div class="thumb-group">
														<div class="yith-wcwl-add-to-wishlist">
															<div class="yith-wcwl-add-button">
																<a href="#">Add to Wishlist</a>
															</div>
														</div>

														<a href="${contextRoot}/shopping/product/${product.pID}"  id="viewBtn" class="button quick-wiew-button" >Quick View</a>
														<div class="loop-form-add-to-cart">
															
												<!-- 				    	<input type="text" name="userLogin" id="userLogin"  class="visually-hidden"/>  -->

											
															<button class="single_add_to_cart_button button"
																id="addcartBtn" type="submit" >Add to cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="product-info">
<!-- 												<h3 class="product-name product_title"> -->
													<a href="${contextRoot}/shopping/product/${product.pID}" class="text">${product.pName}</a>
<!-- 												</h3> -->
<%-- 												<h5>產品分類 : ${product.pType}</h5> --%>
												
												<h4 class="s">　${product.pDetail}　</h4>
												<div class="group-info">
													
													<div class="price">
														<ins class="medium"> 售價 : $${product.productPrice} </ins>
													</div>
												</div>
											</div>
										</div></form>
									</li>	
								</c:forEach>
							</ul>
							
						<!-- 模板的頁數 -->
							<div class="pagination clearfix style3">
								<div class="nav-link">
								<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
										<c:choose>
										<c:when test="${pageNumber-1 != page.number }">
												<a class="page-numbers" href="${contextRoot}/shopping/product/page?p=${pageNumber}">${pageNumber}</a>
											
											</c:when>

											<c:otherwise> ${pageNumber} </c:otherwise>

										</c:choose>
										<c:if test="${pageNumber != page.totalPages}"> · </c:if>
									</c:forEach>
									
								</div>
							</div>

							
							
						</div>
					
						
					</div>
				</div>

	<jsp:include page="productLeft.jsp"></jsp:include>



				</div>
			</div>
		</div>



	</main>

	<jsp:include page="layout/footer.jsp"></jsp:include>


<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
		
<script>
// function joinCart(id) {
	
// 	console.log(id)
// //     $.ajax({
// //         url: "${contextRoot}/shopping/addCart2",
// //         data: "pID=" + id,
// //         type: "POST",
// //         success: function (result) {
// //             alert("加入購物車成功!");

// //         }
// //     })
// }

	// var productId=document.getElementById('productId');
	// productId.onclick=function(){
		
	// 	console.log(productId.value)
	// }

//	document.getElementById("demo1").addEventListener("click", function() {
//		swal("成功加入購物車!", "", "success");
//	});
	


// 	$("#addcartBtn").click(function() {
// 		console.log("aa");
// 		$("#addcartform").submit();
		
// 	})

</script>



</body>
</html>