<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<div class="sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12 pleft">
	<div class="wrapper-sidebar shop-sidebar">
		<div class="widget woof_Widget">
			<div class="widget widget-categories searchpro">
			
				<h3 class="widgettitle">產品搜尋</h3>
				<form name="form1">
				
				<ul class="list-categories" id="checkboxGroup">
<!-- 				onclick="return chk(this);" -->
					<li><input type="checkbox" id="cb1" name="c1" value="全部" onclick="return chk(this);"> <label for="cb1"
						class="label-text"> 全部 </label></li>
					<li><input type="checkbox" id="cb2" name="c1" value="海報" onclick="return chk(this);"> <label for="cb2"
						class="label-text"> 海報 </label></li>
					<li><input type="checkbox" id="cb3" name="c1" value="服飾" onclick="return chk(this);"> <label for="cb3"
						class="label-text"> 服飾 </label></li>
					<li><input type="checkbox" id="cb4" name="c1" value="飲料杯" onclick="return chk(this);"> <label for="cb4"
						class="label-text"> 飲料杯 </label></li>
				</ul>
				</form>
				<hr>
				<form name="form2">
				<ul class="list-categories">
<!-- 				onclick="return cbox(this);" -->
					<li><input type="checkbox" id="cb5" name="c2" value="0" onclick="return cbox(this);"> <label for="cb5"
						class="label-text"> 0元以上 </label></li>
					<li><input type="checkbox" id="cb6" name="c2" value="500" onclick="return cbox(this);"> <label for="cb6"
						class="label-text"> 500元以下 </label></li>
					<li><input type="checkbox" id="cb7" name="c2" value="1000" onclick="return cbox(this);"> <label for="cb7"
						class="label-text"> 1000元以下 </label></li>
					<li><input type="checkbox" id="cb8" name="c2" value="2000" onclick="return cbox(this);"> <label for="cb8"
						class="label-text"> 2000元以下 </label></li>
				</ul>
				</form>
				<div><input class="btn-sm checkboxleft" id="clear" value="清除" type="button"></div>
			</div>

			<div class="widget widget_filter_size">
				<h4 class="widgettitle">Size</h4>
				<ul class="list-size" id="size">
					<li class="a BTN" id="viewSBtn" value="100"><a type="button"> s </a></li>
					<li class="a" id="viewMBtn"><a type="button"> m </a></li>
					<li class="a" id="viewLBtn"><a type="button"> l </a></li>

				</ul>
			</div>

			<div class="widget widget-tags">
				<h3 class="widgettitle">類別標籤</h3>
				<ul class="tagcloud">
					<li class="tag-cloud-link" id="viewLikeBtn1"><a type="button"
						>#阿凡達</a></li>
					<li class="tag-cloud-link" id="viewLikeBtn2"><a type="button"
						>#復仇者聯盟</a></li>
					<li class="tag-cloud-link" id="viewLikeBtn3"><a type="button"
						>#侏羅紀世界</a></li>
					<li class="tag-cloud-link" id="viewLikeBtn4"><a type="button"
						>#蜘蛛人</a></li>

				</ul>
			</div>
		</div>

	</div>
</div>


<script type="text/javascript">	

//============================ 尺寸S、M、L ok ===========================

	viewSBtn.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.toggle("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					viewLike.innerHTML = displayData(xhr.responseText);

					$('.newPage').click(function () {
						var pageID = $(this).data('pageid');
						console.log(pageID)
						sizeSclick(pageID);					 			 		
						});
					
				}
			}
		}
		xhr.open("GET","${contextRoot}/shopping/product/size=s",true);
		xhr.send();
	}


	function sizeSclick(pageID){
		var xhr = new XMLHttpRequest();
		var url ="${contextRoot}/shopping/product/size=s?p="+pageID;
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
	
	viewMBtn.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewMBtn.classList.toggle("active");
		viewSBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
						$('.newPage').click(function () {
						var pageID = $(this).data('pageid');
						console.log(pageID)
						sizeMclick(pageID);					 			 		
						});
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/size=m",true);
			xhr.send();
	}

	function sizeMclick(pageID){
		var xhr = new XMLHttpRequest();
		var url ="${contextRoot}/shopping/product/size=m?p="+pageID;
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
	
	viewLBtn.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewLBtn.classList.toggle("active");
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
						$('.newPage').click(function () {
						var pageID = $(this).data('pageid');
						console.log(pageID)
						sizeLclick(pageID);					 			 		
						});
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/size=l",true);
			xhr.send();
	}

	function sizeLclick(pageID){
		var xhr = new XMLHttpRequest();
		var url ="${contextRoot}/shopping/product/size=l?p="+pageID;
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

//========================== #標籤 ok ================================
	
	viewLikeBtn1.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/like1",true);
			xhr.send();
	}

	viewLikeBtn2.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/like2",true);
			xhr.send();
	}

	viewLikeBtn3.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/like3",true);
			xhr.send();
	}

	viewLikeBtn4.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						viewLike.innerHTML = displayData(xhr.responseText);
					}
				}
			}
			xhr.open("GET","${contextRoot}/shopping/product/like4",true);
			xhr.send();
	}


// ============================= 產品搜尋 checkbox =================================
	
	clear.onclick=function(){
		$("input[type='checkbox']").prop("checked", false);
		viewSBtn.classList.remove("active");
		viewMBtn.classList.remove("active");
		viewLBtn.classList.remove("active");
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					viewLike.innerHTML = displayData(xhr.responseText);
					$('.newPage').click(function () {
						var pageID = $(this).data('pageid');
						click(pageID);					 			 		
						});
				}
			}
		}
		xhr.open("GET","${contextRoot}/shopping/product/price0",true);
		xhr.send();		
	}

	function click(pageID){
		var xhr = new XMLHttpRequest();
		var url ="${contextRoot}/shopping/product/price0?p="+pageID;
		xhr.open("GET",url,true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4) {
				if (xhr.status === 200) {
				viewLike.innerHTML = displayData(xhr.responseText);	
					$('.newPage').click(function () {
						var pageID = $(this).data('pageid');					 			 		
					});
				} else if (xhr.status === 404) {
				} 
			}
		}
	}
	
	
	
function chk(input){
	var cb1=document.getElementById('cb1');
	var cb2=document.getElementById('cb2');
	var cb3=document.getElementById('cb3');
	var cb4=document.getElementById('cb4');

	if(input.checked){
		cb1.checked=false;
		cb2.checked=false;
		cb3.checked=false;
		cb4.checked=false;
		input.checked = true;
		// console.log(cb1.checked);
		// console.log(cb2.checked);
		// console.log(cb3.checked);
		// console.log(cb4.checked);
		$("#cb5").prop("checked", false);
		$("#cb6").prop("checked", false);
		$("#cb7").prop("checked", false);
		$("#cb8").prop("checked", false);
	}	
		return true;
}

function cbox(input){
	var cb5=document.getElementById('cb5');
	var cb6=document.getElementById('cb6');
	var cb7=document.getElementById('cb7');
	var cb8=document.getElementById('cb8');

	if(input.checked){
		cb5.checked=false;
		cb6.checked=false;
		cb7.checked=false;
		cb8.checked=false;
		input.checked = true;
		// console.log(cb5.checked)
		// console.log(cb6.checked)
		// console.log(cb7.checked)
		// console.log(cb8.checked)

		// 全部
		if(cb1.checked==false){
			console.log("cb1==="+cb1.checked);
		}else{

			//全+0
			if(cb5.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
							$('.newPage').click(function () {
							var pageID = $(this).data('pageid');
							console.log(pageID)
							cb1cb5click(pageID);					 			 		
							});
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/price0",true);
				xhr.send();
				console.log("5==="+cb5.checked)
			}
			function cb1cb5click(pageID){
				var xhr = new XMLHttpRequest();
				var url ="${contextRoot}/shopping/product/price0?p="+pageID;
				xhr.open("GET",url,true);
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.readyState === 4) {
						if (xhr.status === 200) {
						viewLike.innerHTML = displayData(xhr.responseText);	
							$('.newPage').click(function () {
								var pageID = $(this).data('pageid');					 			 		
							});
						} else if (xhr.status === 404) {
						} 
					}
				}
			}
			//全+500
			if(cb6.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/price500",true);
				xhr.send();
			}
			//全+1000
			if(cb7.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/price1000",true);
				xhr.send();
			}
			//全+2000
			if(cb8.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
							$('.newPage').click(function () {
							var pageID = $(this).data('pageid');
							console.log(pageID)
							cb1cb8click(pageID);					 			 		
							});
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/price2000",true);
				xhr.send();
			}
			function cb1cb8click(pageID){
				var xhr = new XMLHttpRequest();
				var url ="${contextRoot}/shopping/product/price2000?p="+pageID;
				xhr.open("GET",url,true);
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.readyState === 4) {
						if (xhr.status === 200) {
							viewLike.innerHTML = displayData(xhr.responseText);	
							$('.newPage').click(function () {
								var pageID = $(this).data('pageid');			 			 		
							});
						} else if (xhr.status === 404) {
						} 
					}
				}
			}
		}
		//海報
		if(cb2.checked==false){
			console.log("cb2==="+cb2.checked)

			}else{

			//海報+0
			if(cb2.checked==true && cb5.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type1",true);
				xhr.send();
			}
			//海報+500
			if(cb2.checked==true && cb6.checked==true){
				console.log("+=+"+cb1.checked)
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type1price500",true);
				xhr.send();
			}
			//海報+1000
			if(cb2.checked==true && cb7.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type1price1000",true);
				xhr.send();
			}
			//海報+2000
			if(cb2.checked==true && cb8.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type1price2000",true);
				xhr.send();
			}

		}
		//服飾
		if(cb3.checked==false){
			console.log("cb3==="+cb3.checked)

			}else{

			//服飾+0
			if(cb3.checked==true && cb5.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type2",true);
				xhr.send();
			}
			//服飾+500
			if(cb3.checked==true && cb6.checked==true){
				console.log("+=+"+cb1.checked)
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type2price500",true);
				xhr.send();
			}
			//服飾+1000
			if(cb3.checked==true && cb7.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type2price1000",true);
				xhr.send();
			}
			//服飾+2000
			if(cb3.checked==true && cb8.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type2price2000",true);
				xhr.send();
			}

		}
		//飲料杯
		if(cb4.checked==false){
			console.log("cb4==="+cb4.checked)

			}else{

			//飲料杯+0
			if(cb4.checked==true && cb5.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type3",true);
				xhr.send();
			}
			//飲料杯+500
			if(cb4.checked==true && cb6.checked==true){
				console.log("+=+"+cb1.checked)
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type3price500",true);
				xhr.send();
			}
			//飲料杯+1000
			if(cb4.checked==true && cb7.checked==true){
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type3price1000",true);
				xhr.send();
			}
			//飲料杯+2000
			if(cb4.checked==true && cb8.checked==true){
				console.log();
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4) {
						if (xhr.status == 200) {
							viewLike.innerHTML = displayData(xhr.responseText);
						}
					}
				}
				xhr.open("GET","${contextRoot}/shopping/product/type3price2000",true);
				xhr.send();
			}

		}
		
	}
		return true;
}

	
//===================================== 秀出商品 ==================================

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
