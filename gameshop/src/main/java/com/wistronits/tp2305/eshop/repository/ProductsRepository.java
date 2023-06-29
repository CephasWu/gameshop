package com.wistronits.tp2305.eshop.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wistronits.tp2305.eshop.model.entity.Product;

@Repository
public interface ProductsRepository extends JpaRepository<Product, Integer> {

	// 下架
	@Transactional // 更新和刪除要加，不然會不能執行
	@Modifying
	@Query(value = "Update Product set pState=0 where pID =?1")
	public void editStatesToFalseById(Integer pID);

	// 上架
	@Transactional
	@Modifying
	@Query(value = "Update Product set pState=1 where pID =?1")
	public void editStatesToTrueById(Integer pID);

	// 後台列所有商品
	@Query(value = "select * from Product where typeName='商品'", nativeQuery = true)
	public Page<Product> findAllProductBack(Pageable page);

	// 後台列所有餐點
	@Query(value = "select * from Product where typeName='餐點'", nativeQuery = true)
	public Page<Product> findAllFoodBack(Pageable page);

//	=========================== 以下 餐點前台 ===========================

	// 找單點的商品
	@Query(value = " select * from Product where pState = 1 and pType = '單點'", nativeQuery = true)
	public Page<Product> findSinglePoint(Pageable page);

	// 找飲料的商品
	@Query(value = " select * from Product where pState = 1 and pType = '飲料'", nativeQuery = true)
	public Page<Product> findDrink(Pageable page);

	// 找套餐的商品
	@Query(value = " select * from Product where pState = 1 and pType = '套餐'", nativeQuery = true)
	public Page<Product> findPackage(Pageable page);

//	========================== 以下 商品前台 ==========================

	// 找全部 上架的商品
	@Query(value = "select * from Product where  pState = 1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findAllProduct(Pageable page);

	// 找全部 上架的餐點
	@Query(value = "select * from Product where  pState = 1 and typeName='餐點'", nativeQuery = true)
	public Page<Product> findAllFood(Pageable page);

	// 模糊搜尋 , pName
	@Query(value = "from Product where pName like %?1% and pState=1 and typeName='商品'")
	public List<Product> findProductLike(String pName);

	// 類別標籤 ,#阿凡達
	@Query(value = "select * from Product where pName like '%阿凡達%' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPageLike1(Pageable page);

	// 類別標籤 ,#復仇者聯盟
	@Query(value = "select * from Product where pName like '%復仇者聯盟%' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPageLike2(Pageable page);

	// 類別標籤 ,#侏儸紀世界
	@Query(value = "select * from Product where pName like '%侏羅紀世界%' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPageLike3(Pageable page);

	// 類別標籤 ,#蜘蛛人
	@Query(value = "select * from Product where pName like '%蜘蛛人%' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPageLike4(Pageable page);

	// 尺寸S按鈕
	@Query(value = "select * from Product where (pDetail ='S' or pDetail ='s') and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findBypTypeS(Pageable page);

	// 尺寸M按鈕
	@Query(value = "select * from Product where (pDetail ='M' or pDetail ='m') and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findBypTypeM(Pageable page);

	// 尺寸L按鈕
	@Query(value = "select * from Product where (pDetail ='L' or pDetail ='l') and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findBypTypeL(Pageable page);

	// 全部商品 + 價格
	@Query(value = "select * from Product where pPrice>=0 and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPrice0(Pageable page);
	@Query(value = "select * from Product where pPrice<=500 and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPrice500(Pageable page);
	@Query(value = "select * from Product where pPrice<=1000 and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPrice1000(Pageable page);
	@Query(value = "select * from Product where pPrice<=2000 and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByPrice2000(Pageable page);
	
	// 產品搜尋 海報 價格
	@Query(value = "select * from Product where pType = '海報' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType1(Pageable page);

	@Query(value = "select * from Product where pType = '海報' and pState=1 and pPrice<=500 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType1AndPrice500(Pageable page);

	@Query(value = "select * from Product where pType = '海報' and pState=1 and pPrice<=1000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType1AndPrice1000(Pageable page);

	@Query(value = "select * from Product where pType = '海報' and pState=1 and pPrice<=2000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType1AndPrice2000(Pageable page);

	// 產品搜尋 服飾 價格
	@Query(value = "select * from Product where pType = '服飾' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType2(Pageable page);

	@Query(value = "select * from Product where pType = '服飾' and pState=1 and pPrice<=500 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType2AndPrice500(Pageable page);

	@Query(value = "select * from Product where pType = '服飾' and pState=1 and pPrice<=1000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType2AndPrice1000(Pageable page);

	@Query(value = "select * from Product where pType = '服飾' and pState=1 and pPrice<=2000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType2AndPrice2000(Pageable page);

	// 產品搜尋 飲料杯 價格
	@Query(value = "select * from Product where pType = '杯子' and pState=1 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType3(Pageable page);

	@Query(value = "select * from Product where pType = '杯子' and pState=1 and pPrice<=500 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType3AndPrice500(Pageable page);

	@Query(value = "select * from Product where pType = '杯子' and pState=1 and pPrice<=1000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType3AndPrice1000(Pageable page);

	@Query(value = "select * from Product where pType = '杯子' and pState=1 and pPrice<=2000 and typeName='商品'", nativeQuery = true)
	public Page<Product> findByType3AndPrice2000(Pageable page);



}
