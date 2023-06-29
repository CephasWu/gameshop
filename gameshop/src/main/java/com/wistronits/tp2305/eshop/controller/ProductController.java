package com.wistronits.tp2305.eshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wistronits.tp2305.eshop.model.entity.Product;
import com.wistronits.tp2305.eshop.service.ProductService;

@Controller
public class ProductController {

	private static Logger log = LoggerFactory.getLogger(ProductController.class);
	
	
	@Autowired
	private ProductService productService;

	// 商品秀出 一頁全部
	@RequestMapping("/gridproducts")
	public String gridproducts(Model model, HttpServletRequest request) {

		List<Product> products = productService.getAllProduct();
		model.addAttribute("basePath", request.getContextPath());
		model.addAttribute("products", products);
		return "gridproducts";
	}

	// 單筆介紹迴圈用
	@RequestMapping("/productdetails/{product_Id}")
	public String productDetails(@PathVariable Integer product_Id, Model model, HttpServletRequest request) {

		log.info("這裡是productDetails方法，收到的：" + product_Id);
		Product product = productService.findByproductID(product_Id);
		model.addAttribute("product", product);
		model.addAttribute("basePath", request.getContextPath());
		return "productdetails";
	}

	// 商品秀出AJAX(未完成)
	@RequestMapping("/gridproducts2")
	public String gridproductsAjax(Model model, HttpServletRequest request) {

		List<Product> products = productService.getAllProduct();
		model.addAttribute("basePath", request.getContextPath());
		model.addAttribute("products", products);
		return "gridproductsAjax";
	}

	// 商品秀出 一頁N筆(未完成)
	@GetMapping("/page")
	public String gridproductspage(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model model,
			HttpServletRequest request) {
		Page<Product> page = productService.findByAll(pageNumber);

		model.addAttribute("basePath", request.getContextPath());
		model.addAttribute("products", page);
		return "gridproductspage";
	}

	// 進入商品編輯頁面
	@RequestMapping("/gridproducts3")
	public String gridproducts3(Model model, HttpServletRequest request) {

		List<Product> products = productService.getAllProduct();
		model.addAttribute("basePath", request.getContextPath());
		model.addAttribute("products", products);
		return "productDelete";
	}

	// 刪除單筆商品功能
	@GetMapping("/productDelete")
	public String productDelete(@RequestParam Integer product_Id, Model model, HttpServletRequest request) {
	
		log.info("這裡是productDelete方法，收到的：" + product_Id);
		
		productService.findByProductId(product_Id);
		productService.deleteProduct(product_Id);
		model.addAttribute("basePath", request.getContextPath());
		return "redirect:/gridproducts3";
	}

	// 進入單筆編輯迴圈用
	@RequestMapping("/productEdit/{product_Id}")
	public String productEdit(@PathVariable Integer product_Id, Model model, HttpServletRequest request) {

		log.info("這裡是productEdit方法，收到的：" + product_Id);
		Product product = productService.findByproductID(product_Id);
		model.addAttribute("product", product);
		model.addAttribute("basePath", request.getContextPath());
		return "productEdit";
	}

	// 單筆商品編輯後回介面 Form表單
	@RequestMapping("/productEditSuccess")
	public String productUpdate(@ModelAttribute Product product, Model model, HttpServletRequest request) {

		productService.insertOrUpdate(product);
		model.addAttribute("basePath", request.getContextPath());
		return "redirect:/gridproducts3";
	}

	// 新增單筆商品介面 Form表單
	@RequestMapping("/productAdd")
	public String productAdd(Model model, HttpServletRequest request) {

		Product productAdd = new Product();
		model.addAttribute("movieContent", productAdd);
		model.addAttribute("basePath", request.getContextPath());
		return "productAdd";
	}

	// 新增單筆商品後回介面 Form表單
	@Transactional
	@PostMapping("/productAddSuccess")
	public String productAddSsuccess(@ModelAttribute("Product") Product product, Model model,
			HttpServletRequest request) {

		productService.insertOrUpdate(product);
		model.addAttribute("basePath", request.getContextPath());
		return "redirect:/gridproducts3";
	}

	// 新增單筆商品介面 Ajax
	@RequestMapping("/productAddAjax")
	public String productAddAjax(Model model, HttpServletRequest request) {

		Product productAdd = new Product();
		model.addAttribute("movieContent", productAdd);
		model.addAttribute("basePath", request.getContextPath());
		return "productAddAjax";
	}

	// 新增單筆商品介面測試
	@RequestMapping("/productAddTest")
	public String productAddTest(Model model, HttpServletRequest request) {

		Product productAdd = new Product();
		model.addAttribute("movieContent", productAdd);
		model.addAttribute("basePath", request.getContextPath());
		return "productAddTest";
	}

	// 新增單筆商品後回介面 Ajax (test用)
	@Transactional
	@PostMapping("/letsbuyy2")
	public String letsbuyy2(@RequestBody String productAdd) {

		log.info("這裡是letsbuyy2方法,收到的:" + productAdd);
		productService.saveProductFromJson(productAdd);
		return "productAdd";
	}

	// test 新增單筆商品後回介面 Ajax參考用  (test用)
	@Transactional
	@PostMapping("/letsbuyy")
	public String letsbuyy(@RequestBody String buyy) {

		log.info("這裡是letsbuyy方法,收到的:" + buyy);		
		// purchaseHistoryService.savePurchaseFromJson(buyy);
		return "productAdd";
	}
}
