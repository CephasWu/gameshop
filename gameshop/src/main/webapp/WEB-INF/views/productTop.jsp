<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<div class="container">
	<div class="main-header">
		<div class="row">
			<div
				class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
				<h3 class="custom_blog_title">周邊商品</h3>

			</div>
			<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12 left">
				<div class="block-search-block">
					<form class="form-search form-search-width-category">
						<div class="form-content">

							<div class="inner">
								<input type="text" class="input" value=""
									placeholder="請輸入商品名稱" id="searchInput">

								<button class="btn-search" type="reset" id="searchBtn">
									<span class="icon-search"></span>
								</button>

							</div>

						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</div>

<div class="shop-top-control ">
	<form class="select-item grid-view-mode" >
		<span class="title"> Page : </span> 
		<select title="" data-placeholder="6 Products/Page" class="chosen-select" id="page">
			<option value="pages">預設分頁</option>
			<option id="page" value="pages">6 Products/Page</option>
			<option id="page2" value="page9">9 Products/Page</option>
			<option id="page3" value="page12">12 Products/Page</option>
		</select>
	</form>
	<!-- <form class="filter-choice select-form"> -->
	<form class="grid-view-mode">
		<span class="title">排序 : </span> 
		<select title="價格" data-placeholder="預設排序" class="chosen-select" id="price">
			<option value="pages">預設排序</option>
			<option id="highBtn" value="high">價格由高到低</option>
			<option id="lowBtn" value="low">價格由低到高</option>
			<option id="newBtn" value="new">由新到舊</option>
<!-- 			<option id="old" value="${contextRoot}/shopping/product/old">由舊到新</option> -->
		</select>
	</form>
	<div class="grid-view-mode">
		<div class="inner">
			<a href="#" class="modes-mode mode-list"> <span></span>
				<span></span>
			</a> <a href="#" class="modes-mode mode-grid  active">
				<span></span> <span></span> <span></span> <span></span>
			</a>
		</div>
	</div>
</div>

<script>

// ============================= 商品價錢 排序 ok ==============================

	var price=document.getElementById("price");
	
	price.onchange=function(){
	console.log(price)
	$("input[type='checkbox']").prop("checked", false);

	var xhr = new XMLHttpRequest();
	var priceName= price.options[price.selectedIndex].text;
	console.log(price.value)
	var queryString="price="+price.value+"&priceName="+priceName;
	var url ="${contextRoot}/shopping/product/"+price.value;
	xhr.open("GET",url,true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
			viewLike.innerHTML = displayData(xhr.responseText);
			
			$('.newPage').click(function () {
				console.log("1111")
				var pageID = $(this).data('pageid');
				priceclick(pageID);
			});
				
			} else if (xhr.status === 404) {
			  } 
		}
	}

}
	
// ====================== price 頁數按鈕 ===============	
	
	function priceclick(pageID){
	var xhr = new XMLHttpRequest();
	var url ="${contextRoot}/shopping/product/"+price.value+"?p="+pageID;	
	console.log(price.value+"22")
	xhr.open("GET",url,true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
			viewLike.innerHTML = displayData(xhr.responseText);
				
			$('.newPage').click(function () {
				var pageID = $(this).data('pageid');
				console.log(pageID+"p")
				priceclick(pageID);					 			 		
				});
				
			} else if (xhr.status === 404) {
			  } 
		}
	}

}
	

// =========================== 商品分頁 排序 ok ===============================

var page=document.getElementById("page");
page.onchange=function(){
	$("input[type='checkbox']").prop("checked", false);

	var xhr = new XMLHttpRequest();
// 	var pageName= page.options[page.selectedIndex].text;
	// console.log(priceName)
// 	var queryString="page="+page.value+"&pageName="+pageName;

	var url ="${contextRoot}/shopping/product/"+page.value;
	xhr.open("GET",url,true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				viewLike.innerHTML = displayData(xhr.responseText);
				
				$('.newPage').click(function () {
				console.log("1111")
				var pageID = $(this).data('pageid');
				pageclick(pageID);				 		
		//	url ="${contextRoot}/shopping/product/"+page.value?p=pageID;
		
				});
			} else if (xhr.status === 404) {
			  } 
		}
	}

}

//==================== page 頁數按鈕 ==================
	
function pageclick(pageID){
	var xhr = new XMLHttpRequest();
// 	var pageName= page.options[page.selectedIndex].text;
	// console.log(priceName)
//	var queryString="page="+page.value+"&pageName="+pageName;

	var url ="${contextRoot}/shopping/product/"+page.value+"?p="+pageID;
	xhr.open("GET",url,true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
			viewLike.innerHTML = displayData(xhr.responseText);
				
			$('.newPage').click(function () {
				var pageID = $(this).data('pageid');
				console.log(pageID)
				pageclick(pageID);					 			 		
				});
				
			} else if (xhr.status === 404) {
			  } 
		}
	}

}

// ===================================== 秀出商品 ==================================

function displayData(data){
	let products=JSON.parse(data);
	// console.log(data); //JSON檔案
// 	console.log(products); // 陣列
	// console.log(products.content); //有幾筆資料
	// console.log(products.content.length); //有幾筆資料
	
	let product=products.content;
	

	let pString ='';
	pString = '<div><ul class="row list-products auto-clear equal-container product-grid" >';
				
		for(n=0;n<product.length;n++){
			p=product[n];
			pString+='<li class="product-item  col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">';
			pString+='<form id="addcartform" action="${contextRoot}/shopping/addCart" method="post" enctype="multipart/form-data">';
			pString+='<div class="product-inner equal-element">';
			pString+='<div class="product-thumb" style="height: 280px;">';
			pString+='<div class="thumb-inner">';
			pString+='<input type="hidden" name="productId" id="productId" value='+p.pID+' class="visually-hidden" />';
			pString+='<input type="hidden" value="1" name="quantity" id="quantity" class="visually-hidden" />';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'"><img src="'+p.pPhoto+'"alt="'+p.pName+' 圖片"'+'onerror=javascript:this.'+'src="https://fakeimg.pl/100/?text=image" ></a>';
			pString+='<div class="thumb-group">';
			pString+='<div class="yith-wcwl-add-to-wishlist">';
			pString+='<div class="yith-wcwl-add-button">';
			pString+='<a href="#">Add to Wishlist</a></div></div>';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'" class="button quick-wiew-button">Quick View</a>';
			pString+='<div class="loop-form-add-to-cart">';
			pString+='<button class="single_add_to_cart_button button" id="addcartBtn" type="submit" >Add to cart</button></div></div></div></div>';
			pString+='<div class="product-info">';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'" class="text">'+p.pName+'</a></h5>';
// 			pString+='<h5> 產品分類 :'+p.pType+'</h5>';
			pString+='<h4 class="s">　'+p.pDetail+'　</h4>';
			pString+='<div class="group-info">';
			pString+='<div class="price">';
			pString+='<ins class="medium"> 售價 : $'+p.pPrice+'</ins></div></div></div></div></form></li>';
		}
		pString+='</ul></div>';

	// console.log(products.totalPages); //總頁數
	let totalPages=products.totalPages;
	pString+='<div class="pagination clearfix style3"><div class="nav-link">';
	
	for(var i=1;i<=totalPages;i++){
		pString+='<button class="newPage page-numbers" data-pageid="' + i +'">' +i;	
	}
	
	pString+= '</button></div></div>';
	return pString;

}


</script>




<!-- ============================= 模糊搜尋 ok ================================== -->

<script type="text/javascript">	

let searchInput=$("#searchInput");
let searchBtn=$("#searchBtn");


searchBtn.click(function (e) {
	e.preventDefault();
	var keyword = searchInput.val();
// 	getProducts(searchInput.val());
	let apiURL=(keyword==null) ? '${contextRoot}/shopping/product/pages':'${contextRoot}/shopping/product/like/'+ keyword ;

		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
// 				console.log(xhr.readyState)
				if (xhr.status == 200) {
					viewLike.innerHTML = getProducts(xhr.responseText);
					
					$('.newPage').click(function () {
						var pageID = $(this).data('pageid');
						console.log(pageID)
						pageclick(pageID);					 			 		
						});
				}
			}
		}
		xhr.open("GET",apiURL,true);
		xhr.send();
});

function getProducts(keyword){
	
	console.log("keyword="+keyword);
	let products=JSON.parse(keyword); //JSON檔案	
	console.log(products.length); //有幾筆資料
	searchInput.val(""); // 清空 input 的值
	let pString ='';
	pString = '<div><ul class="row list-products auto-clear equal-container product-grid" >';

		for(n=0;n<products.length;n++){
			p=products[n];
			pString+='<li class="product-item  col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">';
			pString+='<form id="addcartform" action="${contextRoot}/shopping/addCart" method="post" enctype="multipart/form-data">';
			pString+='<div class="product-inner equal-element">';
			pString+='<div class="product-thumb" style="height: 280px;">';
			pString+='<div class="thumb-inner">';
			pString+='<input type="hidden" name="productId" id="productId" value='+p.pID+' class="visually-hidden" />';
			pString+='<input type="hidden" value="1" name="quantity" id="quantity" class="visually-hidden" />';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'"><img src="'+p.pPhoto+'"alt="'+p.pName+' 圖片"'+'onerror=javascript:this.'+'src="https://fakeimg.pl/100/?text=image" ></a>';
			pString+='<div class="thumb-group">';
			pString+='<div class="yith-wcwl-add-to-wishlist">';
			pString+='<div class="yith-wcwl-add-button">';
			pString+='<a href="#">Add to Wishlist</a></div></div>';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'" class="button quick-wiew-button" onclick="quickview_popup()">Quick View</a>';
			pString+='<div class="loop-form-add-to-cart">';
			pString+='<button class="single_add_to_cart_button button" id="addcartBtn" type="submit">Add to cart</button></div></div></div></div>';
			pString+='<div class="product-info">';
			pString+='<a href="${contextRoot}/shopping/product/'+p.pID+'" class="text">'+p.pName+'</a></h5>';
// 			pString+='<h5> 產品分類 :'+p.pType+'</h5>';
			pString+='<h4 class="s">　'+p.pDetail+'　</h4>';
			pString+='<div class="group-info">';
			pString+='<div class="price">';
			pString+='<ins class="medium"> 售價 : $'+p.pPrice+'</ins></div></div></div></div></form></li>';
		}
		pString+='</ul></div>';

		// console.log(products.totalPages); //總頁數
		let totalPages=products.totalPages;
		pString+='<div class="pagination clearfix style3"><div class="nav-link">';

		for(var i=1;i<=totalPages;i++){
			pString+='<button class="newPage page-numbers" data-pageid="' + i +'">' +i;	
		}

		pString+= '</button></div></div>';
		return pString;

}



</script>


