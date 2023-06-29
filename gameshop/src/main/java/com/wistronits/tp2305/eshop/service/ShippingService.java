package com.wistronits.tp2305.eshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wistronits.tp2305.eshop.model.entity.Shipping;
import com.wistronits.tp2305.eshop.repository.ShippingRepository;
import com.wistronits.tp2305.eshop.repository.UsersRepository;

@Service
public class ShippingService {

	@Autowired
	private ShippingRepository shippingRepository;

	public List<Shipping> getAllShipping(String member_id) {
//	public List<Shipping> getAllShipping() {
//	    int member_id = 2; 
		int member_idint = Integer.parseInt(member_id);
		System.out.println("這裡是service有拿到" + member_idint);
		List<Shipping> testshipping = shippingRepository.findByMemberid(member_idint);
		for (Shipping item : testshipping) {
			StringBuilder itemInfo = new StringBuilder();
			itemInfo.append("Product_id=" + item.getProductid()).append(",mid=" + item.getMemberid())
					.append(",pname=" + item.getProduct_name()).append(",pquantity=" + item.getProduct_quantity());
			System.out.println(itemInfo.toString());
		}
		return testshipping;
	}

	public void saveShippingFromJson(String json, String member_id) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			Shipping shippingJ;

			shippingJ = objectMapper.readValue(json, Shipping.class);

			int member_idint = Integer.parseInt(member_id);
			System.out.println("這裡是service有拿到" + member_idint);
			List<Shipping> testshipping = shippingRepository.findByMemberid(member_idint);
			boolean hasDuplicate = false;
			for (Shipping shipping : testshipping) {
				int productId = shipping.getProductid();
				System.out.println("Product ID: " + productId);
				if (productId == shippingJ.getProductid()) {
					hasDuplicate = true;
					break;
				}
			}

			if (!hasDuplicate) {

				shippingRepository.save(shippingJ);

			} else {
				System.out.println("無法新增Shipping記錄，已存在相同的productid: " + shippingJ.getProductid());
			}
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

//	public List<Shipping> getAllShipping() {
//		
////		 List<Shipping> testshipping = shippingRepository.findByMid(1);
//		List<Shipping> testshipping = shippingRepository.findAll();
//		for (Shipping item : testshipping) {
//			StringBuilder itemInfo = new StringBuilder();
//			itemInfo.append("Product_id=" + item.getProductid()).append(",mid=" + item.getMember_id()).append(",pname=" + item.getProduct_name())
//					.append(",pquantity=" + item.getProduct_quantity());
//			System.out.println(itemInfo.toString());
//		}
//		return testshipping;
//	}

	public void saveShippingFromJson(String json) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			Shipping shipping = objectMapper.readValue(json, Shipping.class);

			// 檢查資料庫中是否已存在具有相同productid的記錄
			Shipping existingShipping = shippingRepository.findByProductid(shipping.getProductid());
			if (existingShipping == null) {
				// 如果不存在，則保存新記錄
				shippingRepository.save(shipping);
			} else {
				// 如果已存在相同的productid，則進行相應的處理，例如更新現有記錄或拋出異常
				// 這裡只是印出錯誤訊息，您可以根據需求進行適當的處理
				System.out.println("無法新增Shipping記錄，已存在相同的productid: " + shipping.getProductid());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	
	
	 public Shipping addOne(int userid, int productid) {
	        Shipping shipping = shippingRepository.findByProductidAndMemberid(productid, userid);
	        if (shipping != null) {
	            int newProductQuantity = shipping.getProduct_quantity() + 1;
	            shipping.setProduct_quantity(newProductQuantity);
	            shippingRepository.save(shipping);
	        }
	        return shipping;
	    }


	


	 public Shipping subone(int userid, int productid) {
	        Shipping shipping = shippingRepository.findByProductidAndMemberid(productid, userid);
	        if (shipping != null) {
	            int newProductQuantity = shipping.getProduct_quantity() - 1;
	            shipping.setProduct_quantity(newProductQuantity);
	            shippingRepository.save(shipping);
	        }
	        return shipping;
	    }
	
	
	
	
	

	public void deleteByProductId(int userid, int productid) {
		shippingRepository.deleteByProductidAndMemberid(productid, userid);
	}

}
