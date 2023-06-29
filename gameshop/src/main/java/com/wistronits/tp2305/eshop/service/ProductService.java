package com.wistronits.tp2305.eshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wistronits.tp2305.eshop.model.entity.Product;
import com.wistronits.tp2305.eshop.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	// insertOrUpdate 用
	public void insertOrUpdate(Product product) {
		productRepository.save(product);
	}

	// 找id拿資料 編輯
	public Product findByProductId(Integer product_Id) {
		Optional<Product> optional = productRepository.findById(product_Id);
		System.out.println(product_Id);
		if (optional.isPresent()) {
			System.out.println(optional.toString());
			return optional.get();
		}

		return null;
	}

	// 後台依照ID刪除
	public void deleteProduct(Integer product_Id) {
		productRepository.deleteById(product_Id);
	}

	// 儲存進資料庫 ajaxx
	public void saveProductFromJson(String json) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			Product product = objectMapper.readValue(json, Product.class);
			productRepository.save(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	 public void savePurchaseFromJson(String json) {
//		  try {
//		   ObjectMapper objectMapper = new ObjectMapper();
//		   PurchaseHistory purchaseHistory = objectMapper.readValue(json, PurchaseHistory.class);
//		   purchaseHistoryRepository.save(purchaseHistory);
//		  } catch (Exception e) {
//		   e.printStackTrace();
//		  }
//		 }
	// 取得所有商品
	public List<Product> getAllProduct() {
		List<Product> testProduct = productRepository.findAll();
		for (Product item : testProduct) {
			StringBuilder itemInfo = new StringBuilder();
			itemInfo.append("ProductId=" + item.getProduct_Id()).append(",ProductName=" + item.getProduct_Name())
					.append(",ProductType=" + item.getProduct_Type()).append(",ProductPrice=" + item.getProduct_Price())
					.append(",ProductCount=" + item.getProduct_Count())
					.append(",ProductPhoto=" + item.getProduct_Photo());
			System.out.println(itemInfo.toString());
		}
		return testProduct;
	}

	// 前台依照ID顯示
	public Product findByproductID(Integer product_Id) {
		Optional<Product> optional = productRepository.findById(product_Id);

		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	// 商品全列出，一頁8個
	public Page<Product> findByAll(Integer pageNumber) {
		Pageable pageable = PageRequest.of(pageNumber - 1, 8, Sort.Direction.ASC, "product_Id");
		return productRepository.findAll(pageable);
	}

}
