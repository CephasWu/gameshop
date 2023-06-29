package com.wistronits.tp2305.eshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.wistronits.tp2305.eshop.model.entity.Product;
import com.wistronits.tp2305.eshop.repository.ProductsRepository;



@Service
public class ProductsService {

	@Autowired
	private ProductsRepository pRepo;

	// 下架
	public void editStatesToFalseById(Integer pID) {
		pRepo.editStatesToFalseById(pID);
	}

	// 上架
	public void editStatesToTrueById(Integer pID) {
		pRepo.editStatesToTrueById(pID);
	}

	// 用商品名列出商品，一頁6個
	public Page<Product> findByPage6(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 6, Sort.Direction.DESC, "pName");
		return pRepo.findAllProduct(pge);
	}

	// 用商品名列出商品，一頁9個
	public Page<Product> findByPage9(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.DESC, "pName");
		return pRepo.findAllProduct(pge);
	}

	// 用商品名列出商品，一頁12個
	public Page<Product> findByPage12(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "pName");
		return pRepo.findAllProduct(pge);
	}

	// 價格由高到低，一頁六個
	public Page<Product> findByPageHigh(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 6, Sort.Direction.DESC, "pPrice");
		return pRepo.findAllProduct(pge);
	}

	// 價格由低到高，一頁六個
	public Page<Product> findByPageLow(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 6, Sort.Direction.ASC, "pPrice");
		return pRepo.findAllProduct(pge);
	}

	// 由新到舊，一頁六個
	public Page<Product> findByPageNew(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 6, Sort.Direction.DESC, "pTime");
		return pRepo.findAllProduct(pge);
	}

	// 模糊搜尋 關鍵字 ok
	public List<Product> findProductLike(String pName) {
		return pRepo.findProductLike(pName);
	}

	// 類別標籤搜尋 ok
	public Page<Product> findByPageLike1(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findByPageLike1(pge);
	}

	public Page<Product> findByPageLike2(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findByPageLike2(pge);
	}

	public Page<Product> findByPageLike3(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findByPageLike3(pge);
	}

	public Page<Product> findByPageLike4(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findByPageLike4(pge);
	}

	// 尺寸S、M、L按鈕 
	public Page<Product> findBypTypeS(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findBypTypeS(pge);
	}

	public Page<Product> findBypTypeM(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findBypTypeM(pge);
	}

	public Page<Product> findBypTypeL(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pID");
		return pRepo.findBypTypeL(pge);
	}

	// 全部商品 + 價錢
	public Page<Product> findByPrice0(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByPrice0(pge);
	}
	public Page<Product> findByPrice500(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByPrice500(pge);
	}
	public Page<Product> findByPrice1000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByPrice1000(pge);
	}
	public Page<Product> findByPrice2000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByPrice2000(pge);
	}
	
	// 產品搜尋 海報 + 價錢
	public Page<Product> findByType1(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType1(pge);
	}

	public Page<Product> findByType1AndPrice500(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType1AndPrice500(pge);
	}

	public Page<Product> findByType1AndPrice1000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType1AndPrice1000(pge);
	}

	public Page<Product> findByType1AndPrice2000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType1AndPrice2000(pge);
	}

	// 產品搜尋 服飾 + 價錢
	public Page<Product> findByType2(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType2(pge);
	}

	public Page<Product> findByType2AndPrice500(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType2AndPrice500(pge);
	}

	public Page<Product> findByType2AndPrice1000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType2AndPrice1000(pge);
	}

	public Page<Product> findByType2AndPrice2000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType2AndPrice2000(pge);
	}

	// 產品搜尋 飲料杯 + 價錢
	public Page<Product> findByType3(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType3(pge);
	}

	public Page<Product> findByType3AndPrice500(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType3AndPrice500(pge);
	}

	public Page<Product> findByType3AndPrice1000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType3AndPrice1000(pge);
	}

	public Page<Product> findByType3AndPrice2000(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 9, Sort.Direction.ASC, "pPrice");
		return pRepo.findByType3AndPrice2000(pge);
	}


	// 找id拿資料 編輯
	public Product findById(Integer pID) {
		Optional<Product> optional = pRepo.findById(pID);
		System.out.println(pID);
		if (optional.isPresent()) {
			System.out.println(optional.toString());
			return optional.get();
		}

		return null;
	}

	// 後台 用商品ID列出商品，一頁10個 ok
	public Page<Product> findBybakePage(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 10, Sort.Direction.ASC, "pID");
		return pRepo.findAllProductBack(pge);
	}

	// 新增商品 ok 編輯商品
	public void insertOrUpdate(Product product) {
		pRepo.save(product);
	}

	// 刪除商品 ok
	public void deleteProduct(Integer pID) {
		pRepo.deleteById(pID);
	}

//	========================= 以下是餐點 =============================

	// 後台 用商品ID列出商品，一頁10個 ok
	public Page<Product> backFoodPageList(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 10, Sort.Direction.ASC, "pID");
		return pRepo.findAllFoodBack(pge);
	}

	// 用名字列出餐點，一頁9個
	public Page<Product> findAllFood(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "pStore");
		return pRepo.findAllFood(pge);
	}

	// 搜尋按鈕
	public Page<Product> findSinglePoint(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "pStore");
		return pRepo.findSinglePoint(pge);
	}

	public Page<Product> findDrink(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "pStore");
		return pRepo.findDrink(pge);
	}

	public Page<Product> findPackage(Integer pageNumber) {
		Pageable pge = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "pStore");
		return pRepo.findPackage(pge);
	}

}
