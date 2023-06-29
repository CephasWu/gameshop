package com.wistronits.tp2305.eshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wistronits.tp2305.eshop.model.entity.PurchaseHistory;
import com.wistronits.tp2305.eshop.repository.PurchaseHistoryRepository;

@Service
public class PurchaseHistoryService {

	@Autowired
	private PurchaseHistoryRepository purchaseHistoryRepository;

	public void savePurchaseFromJson(String json) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			PurchaseHistory purchaseHistory = objectMapper.readValue(json, PurchaseHistory.class);
			purchaseHistoryRepository.save(purchaseHistory);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	public List<Shipping> getAllShipping() {
//
////		 List<Shipping> testshipping = shippingRepository.findByMid(1);
//		List<Shipping> testshipping = shippingRepository.findAll();
//		for (Shipping item : testshipping) {
//			StringBuilder itemInfo = new StringBuilder();
//			itemInfo.append("Product_id=" + item.getProductid()).append(",mid=" + item.getMember_id())
//					.append(",pname=" + item.getProduct_name()).append(",pquantity=" + item.getProduct_quantity());
//			System.out.println(itemInfo.toString());
//		}
//		return testshipping;
//	}
//
//	
//
//	public List<Shipping> findaaa(int bbb) {
//		List<Shipping> shippings = shippingRepository.findByProductid(bbb);
//		for (Shipping shipping : shippings) {
//			int newPquantity = shipping.getProduct_quantity() + 1;
//			shipping.setProduct_quantity(newPquantity);
//			shippingRepository.save(shipping);
//		}
//		return shippings;
//	}

}
