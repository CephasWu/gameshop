package com.wistronits.tp2305.eshop.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wistronits.tp2305.eshop.model.entity.Product;
import com.wistronits.tp2305.eshop.service.ProductsService;

@Controller
public class ShoppingController {

	@Autowired
	private ProductsService pService;

	// 列出商品,用商品名列出商品6個
	@GetMapping("/shopping/product/page")
	public String pageList6(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPage6(pageNumber);
		m.addAttribute("page", page);
		return "shopping/showProduct";
	}

	// 列出商品,用商品名列出商品6個 json
	@GetMapping("/shopping/product/pages")
	@ResponseBody
	public Page<Product> pagesList(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPage6(pageNumber);
		return page;
	}

	// 列出商品,用商品名列出商品9個
	@GetMapping("/shopping/product/page9")
	@ResponseBody
	public Page<Product> pageList9(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPage9(pageNumber);
		return page;
	}

	// 列出商品,用商品名列出商品12個
	@GetMapping("/shopping/product/page12")
	@ResponseBody
	public Page<Product> pageList12(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPage12(pageNumber);
		return page;
	}

	// 價格由高到低 列出商品
	@GetMapping("/shopping/product/high")
	@ResponseBody
	public Page<Product> pageListHigh(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageHigh(pageNumber);
		return page;
	}

	// 價格由低到高 列出商品
	@GetMapping("/shopping/product/low")
	@ResponseBody
	public Page<Product> pageListLow(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageLow(pageNumber);
		return page;
	}

	// 價格由新到舊 列出商品
	@GetMapping("/shopping/product/new")
	@ResponseBody
	public Page<Product> pageListNew(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageNew(pageNumber);
		return page;
	}

	// 價格由舊到新 列出商品
//	@GetMapping("/shopping/product/old")
//	public String pageListOld(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
//		Page<Product> page = pService.findByPageOld(pageNumber);
//		m.addAttribute("page", page);
//		return "shopping/showProduct";
//	}

	// 用ID找圖片
//	@GetMapping("/product/photo/{pID}")
//	public void findPhoto(@PathVariable Integer pID, HttpServletResponse response) throws IOException {
//		byte[] bytes = pService.findPhotoById(pID);
//		ServletOutputStream out = response.getOutputStream();
//		out.write(bytes);
//		out.close();
//	}

	// 模糊搜尋關鍵字 (ajax) 半ok , 沒有頁數
//	@GetMapping("/shopping/product/like/{pName}")
//	protected void doGet1(HttpServletRequest request, HttpServletResponse response, @PathVariable String pName)
//			throws IOException {
//		response.setContentType("application/json;charset=UTF-8");
////		String pathInfo = request.getPathInfo();
////		Boolean isFuzzySearch = Boolean.valueOf(request.getParameter("fuzzy"));
////		System.out.println(pathInfo);
////		System.out.println(isFuzzySearch);
//		List<Product> pList = new ArrayList<Product>();
//		pList = pService.findProductLike(pName);
//		String pListJson = new Gson().toJson(pList);
//		PrintWriter out = response.getWriter();
//		out.write(pListJson);
//		out.close();
//	}

	// 模糊搜尋關鍵字 (ajax) json
	@GetMapping("/shopping/product/like/{pName}")
	@ResponseBody
	public List<Product> findProductLike(@PathVariable String pName) {
		List<Product> pList = pService.findProductLike(pName);
		return pList;
	}

	// 類別標籤搜尋 json格式
	@GetMapping("/shopping/product/like1")
	@ResponseBody
	public Page<Product> findProductLike1(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageLike1(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/like2")
	@ResponseBody
	public Page<Product> findProductLike2(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageLike2(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/like3")
	@ResponseBody
	public Page<Product> findProductLike3(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageLike3(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/like4")
	@ResponseBody
	public Page<Product> findProductLike4(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPageLike4(pageNumber);
		return page;
	}

	// 尺寸S、M、L按鈕 json
	@GetMapping("/shopping/product/size=s")
	@ResponseBody
	public Page<Product> findBypTypeS(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findBypTypeS(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/size=m")
	@ResponseBody
	public Page<Product> findBypTypeM(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findBypTypeM(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/size=l")
	@ResponseBody
	public Page<Product> findBypTypeL(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findBypTypeL(pageNumber);
		return page;
	}

	// 產品搜尋 checkbox 類別+價格
	@GetMapping("/shopping/product/price0")
	@ResponseBody
	public Page<Product> findByPrice0(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPrice0(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/price500")
	@ResponseBody
	public Page<Product> findByPrice500(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPrice500(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/price1000")
	@ResponseBody
	public Page<Product> findByPrice1000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPrice1000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/price2000")
	@ResponseBody
	public Page<Product> findByPrice2000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByPrice2000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type1price500")
	@ResponseBody
	public Page<Product> findByType1AndPrice500(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType1AndPrice500(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type1price1000")
	@ResponseBody
	public Page<Product> findByType1AndPrice1000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType1AndPrice1000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type1price2000")
	@ResponseBody
	public Page<Product> findByType1AndPrice2000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType1AndPrice2000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type2price500")
	@ResponseBody
	public Page<Product> findByType2AndPrice500(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType2AndPrice500(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type2price1000")
	@ResponseBody
	public Page<Product> findByType2AndPrice1000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType2AndPrice1000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type2price2000")
	@ResponseBody
	public Page<Product> findByType2AndPrice2000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType2AndPrice2000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type3price500")
	@ResponseBody
	public Page<Product> findByType3AndPrice500(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType3AndPrice500(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type3price1000")
	@ResponseBody
	public Page<Product> findByType3AndPrice1000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType3AndPrice1000(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type3price2000")
	@ResponseBody
	public Page<Product> findByType3AndPrice2000(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber,
			Model m) {
		Page<Product> page = pService.findByType3AndPrice2000(pageNumber);
		return page;
	}

	// 類別
	@GetMapping("/shopping/product/type1")
	@ResponseBody
	public Page<Product> findByType1(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByType1(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type2")
	@ResponseBody
	public Page<Product> findByType2(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByType2(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/type3")
	@ResponseBody
	public Page<Product> findByType3(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findByType3(pageNumber);
		return page;
	}

	@GetMapping("/shopping/product/{pID}")
	public String quickViewProduct(@PathVariable Integer pID, Model model) {
		System.out.println(pID);
		Product product = pService.findById(pID);
		model.addAttribute("product", product);
		return "shopping/viewProduct";
	}

	@GetMapping("/shopping/product/json/{pID}")
	@ResponseBody
	public Product quickviewJson(@PathVariable Integer pID, Model model) {
		System.out.println(pID);
		Product product = pService.findById(pID);
		return product;
	}

//	============================ 商品後台 ==============================

	// 後台 列出商品 admin
	@GetMapping("/admin/back/product")
	public String backPageListAdmin(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findBybakePage(pageNumber);
		m.addAttribute("page", page);
		return "shopping/backProduct";
	}

	// 新增商品 (modal) ok
	@PostMapping("/admin/back/product/insert")
	public String insertProduct(@RequestParam(name = "pName") String pName,
			@RequestParam(name = "pPrice") Integer pPrice, @RequestParam(name = "pStore") Integer pStore,
			@RequestParam(name = "pType") String pType, @RequestParam(name = "pPhoto") String pPhoto,
			@RequestParam(name = "pDetail") String pDetail, @RequestParam(name = "typeName") String typeName) {

		Product product = new Product();
//		product.setpPhoto(pPhoto);
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpDetail(pDetail);
//		product.setTypeName(typeName);

		pService.insertOrUpdate(product);
		return "redirect:/admin/back/product";
	}

	// 編輯用ID找資料 ok
	@GetMapping("/admin/back/product/edit/{pID}")
	public String updatePage(@PathVariable Integer pID, Model model) {
//			System.out.println(pID);
		Product product = pService.findById(pID);
		model.addAttribute("product", product);
		return "shopping/editProduct";
	}

	// 編輯商品 (分頁) ok
	@PostMapping("/admin/back/product/editPost")
	public String postUpdate(@RequestParam Integer pID, @RequestParam String pName, @RequestParam Integer pPrice,
			@RequestParam Integer pStore, @RequestParam String pType, @RequestParam String pDetail,
			@RequestParam MultipartFile pPhoto, Model model) {

		byte[] bytes = null;
		try {
			bytes = pPhoto.getInputStream().readAllBytes();
		} catch (IOException e) {
			e.printStackTrace();
		}
//			System.out.println("================"+Base64.getEncoder().encodeToString(bytes).length());
		String imgBase64 = "data:" + pPhoto.getContentType() + ";base64," + Base64.getEncoder().encodeToString(bytes);
//			Products product= (Products) model.getAttribute("product");
		Product product = pService.findById(pID);
//			Products product = new Products();
		if (Base64.getEncoder().encodeToString(bytes).length() != 0) {
//			product.setpPhoto(imgBase64);
		}
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpID(pID);
//		product.setpDetail(pDetail);

		pService.insertOrUpdate(product);

		return "redirect:/admin/back/product";
	}

	// 刪除商品 ok
	@GetMapping("/admin/back/product/delete")
	public String deleteproduct(@RequestParam Integer pID) {
		pService.findById(pID);
		pService.deleteProduct(pID);
		return "redirect:/admin/back/product";
	}

	// 下架
	@PostMapping("/product/editStatesToFalse")
	@ResponseBody
	public void editStatesToFalse(@RequestParam Integer pID) {
		pService.editStatesToFalseById(pID);

	}

	// 上架
	@PostMapping("/product/editStatesToTrue")
	@ResponseBody
	public void editStatesToTrue(@RequestParam Integer pID) {
		pService.editStatesToTrueById(pID);

	}

//	============================= employee ==================================

	// 後台 列出商品 employee
	@GetMapping("/employee/back/product")
	public String backPageListEmployee(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findBybakePage(pageNumber);
		m.addAttribute("page", page);
		return "shopping/EmployeebackProduct";
	}

	// 新增商品 (modal) employee
	@PostMapping("/employee/back/product/insert")
	public String insertProductEmployee(@RequestParam(name = "pName") String pName,
			@RequestParam(name = "pPrice") Integer pPrice, @RequestParam(name = "pStore") Integer pStore,
			@RequestParam(name = "pType") String pType, @RequestParam(name = "pPhoto") String pPhoto,
			@RequestParam(name = "pDetail") String pDetail, @RequestParam(name = "typeName") String typeName) {

		Product product = new Product();
//		product.setpPhoto(pPhoto);
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpDetail(pDetail);
//		product.setTypeName(typeName);

		pService.insertOrUpdate(product);
		return "redirect:/employee/back/product";

	}

	// 編輯用ID找資料 Employee
	@GetMapping("/employee/back/product/edit/{pID}")
	public String updatePageEmployee(@PathVariable Integer pID, Model model) {
//					System.out.println(pID);
		Product product = pService.findById(pID);
		model.addAttribute("product", product);
		return "shopping/EmployeeEditProduct";
	}

	// 編輯商品 (分頁) Employee
	@PostMapping("/employee/back/product/editPost")
	public String postUpdateEmployee(@RequestParam Integer pID, @RequestParam String pName,
			@RequestParam Integer pPrice, @RequestParam Integer pStore, @RequestParam String pType,
			@RequestParam String pDetail, @RequestParam MultipartFile pPhoto, Model model) {

		byte[] bytes = null;
		try {
			bytes = pPhoto.getInputStream().readAllBytes();
		} catch (IOException e) {
			e.printStackTrace();
		}
//					System.out.println("================"+Base64.getEncoder().encodeToString(bytes).length());
		String imgBase64 = "data:" + pPhoto.getContentType() + ";base64," + Base64.getEncoder().encodeToString(bytes);
//					Products product= (Products) model.getAttribute("product");
		Product product = pService.findById(pID);
//					Products product = new Products();
		if (Base64.getEncoder().encodeToString(bytes).length() != 0) {
//			product.setpPhoto(imgBase64);
		}
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpID(pID);
//		product.setpDetail(pDetail);

		pService.insertOrUpdate(product);

		return "redirect:/employee/back/product";
	}

	// 刪除商品 Employee
	@GetMapping("/employee/back/product/delete")
	public String deleteproductEmployee(@RequestParam Integer pID) {
		pService.findById(pID);
		pService.deleteProduct(pID);
		return "redirect:/employee/back/product";
	}

//	========================================= 餐點後台 ============================================

	// 後台 列出餐點 admin
	@GetMapping("/admin/back/food")
	public String backFoodPageListAdmin(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.backFoodPageList(pageNumber);
		m.addAttribute("page", page);
		return "shopping/backFood";
	}

	// 新增餐點 (modal)
	@PostMapping("/admin/back/food/insert")
	public String insertFood(@RequestParam(name = "pName") String pName, @RequestParam(name = "pPrice") Integer pPrice,
			@RequestParam(name = "pStore") Integer pStore, @RequestParam(name = "pType") String pType,
			@RequestParam(name = "pPhoto") String pPhoto, @RequestParam(name = "pDetail") String pDetail,
			@RequestParam(name = "typeName") String typeName) {

		Product product = new Product();
//		product.setpPhoto(pPhoto);
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpDetail(pDetail);
//		product.setTypeName(typeName);

		pService.insertOrUpdate(product);
		return "redirect:/admin/back/food";
	}

	// 編輯用ID找資料
	@GetMapping("/admin/back/food/edit/{pID}")
	public String updatePageFood(@PathVariable Integer pID, Model model) {
//					System.out.println(pID);
		Product product = pService.findById(pID);
		model.addAttribute("product", product);
		return "shopping/editFood";
	}

	// 編輯餐點 (分頁)
	@PostMapping("/admin/back/food/editPost")
	public String postUpdateFood(@RequestParam Integer pID, @RequestParam String pName, @RequestParam Integer pPrice,
			@RequestParam Integer pStore, @RequestParam String pType, @RequestParam String pDetail,
			@RequestParam MultipartFile pPhoto, Model model) {

		byte[] bytes = null;
		try {
			bytes = pPhoto.getInputStream().readAllBytes();
		} catch (IOException e) {
			e.printStackTrace();
		}
//			System.out.println("================"+Base64.getEncoder().encodeToString(bytes).length());
		String imgBase64 = "data:" + pPhoto.getContentType() + ";base64," + Base64.getEncoder().encodeToString(bytes);
//			Products product= (Products) model.getAttribute("product");
		Product product = pService.findById(pID);
//			Products product = new Products();
		if (Base64.getEncoder().encodeToString(bytes).length() != 0) {
//			product.setpPhoto(imgBase64);
		}
//		product.setpName(pName);
//		product.setpPrice(pPrice);
//		product.setpStore(pStore);
//		product.setpType(pType);
//		product.setpID(pID);
//		product.setpDetail(pDetail);

		pService.insertOrUpdate(product);

		return "redirect:/admin/back/food";
	}

	// 刪除餐點
	@GetMapping("/admin/back/food/delete")
	public String deleteFood(@RequestParam Integer pID) {
		pService.findById(pID);
		pService.deleteProduct(pID);
		return "redirect:/admin/back/food";
	}

	// 下架
	@PostMapping("/food/editStatesToFalse")
	@ResponseBody
	public void editStateToFalse(@RequestParam Integer pID) {
		pService.editStatesToFalseById(pID);

	}

	// 上架
	@PostMapping("/food/editStatesToTrue")
	@ResponseBody
	public void editStateToTrue(@RequestParam Integer pID) {
		pService.editStatesToTrueById(pID);

	}
	
	// 後台 列出餐點 employee
		@GetMapping("/employee/back/food")
		public String backFoodPageListEmployee(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
			Page<Product> page = pService.backFoodPageList(pageNumber);
			m.addAttribute("page", page);
			return "shopping/EmployeebackFood";
		}


	// 新增餐點 (modal)
		@PostMapping("/employee/back/food/insert")
		public String insertFoodEmployee(@RequestParam(name = "pName") String pName, @RequestParam(name = "pPrice") Integer pPrice,
				@RequestParam(name = "pStore") Integer pStore, @RequestParam(name = "pType") String pType,
				@RequestParam(name = "pPhoto") String pPhoto, @RequestParam(name = "pDetail") String pDetail,
				@RequestParam(name = "typeName") String typeName) {

			Product product = new Product();
//			product.setpPhoto(pPhoto);
//			product.setpName(pName);
//			product.setpPrice(pPrice);
//			product.setpStore(pStore);
//			product.setpType(pType);
//			product.setpDetail(pDetail);
//			product.setTypeName(typeName);

			pService.insertOrUpdate(product);
			return "redirect:/employee/back/food";
		}

		// 編輯用ID找資料
		@GetMapping("/employee/back/food/edit/{pID}")
		public String updatePageFoodEmployee(@PathVariable Integer pID, Model model) {
//						System.out.println(pID);
			Product product = pService.findById(pID);
			model.addAttribute("product", product);
			return "shopping/EmployeeEditFood";
		}

		// 編輯餐點 (分頁)
		@PostMapping("/employee/back/food/editPost")
		public String postUpdateFoodEmployee(@RequestParam Integer pID, @RequestParam String pName, @RequestParam Integer pPrice,
				@RequestParam Integer pStore, @RequestParam String pType, @RequestParam String pDetail,
				@RequestParam MultipartFile pPhoto, Model model) {

			byte[] bytes = null;
			try {
				bytes = pPhoto.getInputStream().readAllBytes();
			} catch (IOException e) {
				e.printStackTrace();
			}
//				System.out.println("================"+Base64.getEncoder().encodeToString(bytes).length());
			String imgBase64 = "data:" + pPhoto.getContentType() + ";base64," + Base64.getEncoder().encodeToString(bytes);
//				Products product= (Products) model.getAttribute("product");
			Product product = pService.findById(pID);
//				Products product = new Products();
			if (Base64.getEncoder().encodeToString(bytes).length() != 0) {
//				product.setpPhoto(imgBase64);
			}
//			product.setpName(pName);
//			product.setpPrice(pPrice);
//			product.setpStore(pStore);
//			product.setpType(pType);
//			product.setpID(pID);
//			product.setpDetail(pDetail);

			pService.insertOrUpdate(product);

			return "redirect:/employee/back/food";
		}

		// 刪除餐點
		@GetMapping("/employee/back/food/delete")
		public String deleteFoodEmployee(@RequestParam Integer pID) {
			pService.findById(pID);
			pService.deleteProduct(pID);
			return "redirect:/employee/back/food";
		}

	
//	=========================== 餐點前台 ============================

	// 列出餐點,用餐點名列出餐點9個
	@GetMapping("/shopping/food/page")
	public String pageListFood9(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findAllFood(pageNumber);
		m.addAttribute("page", page);
		return "shopping/showFood";
	}

	@GetMapping("/shopping/food/showall")
	@ResponseBody
	public Page<Product> findShowAll(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findAllFood(pageNumber);
		return page;
	}

	@GetMapping("/shopping/food/single")
	@ResponseBody
	public Page<Product> findSinglePoint(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findSinglePoint(pageNumber);
		return page;
	}

	@GetMapping("/shopping/food/drink")
	@ResponseBody
	public Page<Product> findDrink(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findDrink(pageNumber);
		return page;
	}

	@GetMapping("/shopping/food/package")
	@ResponseBody
	public Page<Product> findPackage(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model m) {
		Page<Product> page = pService.findPackage(pageNumber);
		return page;
	}

	@GetMapping("/shopping/food/{pID}")
	public String quickViewFood(@PathVariable Integer pID, Model model) {
		System.out.println(pID);
		Product product = pService.findById(pID);
		model.addAttribute("product", product);
		return "shopping/viewFood";
	}

}
