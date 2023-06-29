package com.wistronits.tp2305.eshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wistronits.tp2305.eshop.model.entity.PurchaseHistoryDetail;
import com.wistronits.tp2305.eshop.repository.PurchaseHistoryDetailRepository;

@Service
public class PurchaseHistoryDetailService {

	@Autowired
	private PurchaseHistoryDetailRepository purchaseHistoryDetailRepository ;	
	
	
	public void savePurchaseDetails(List<PurchaseHistoryDetail> purchaseHistoryDetails) {
	    purchaseHistoryDetailRepository.saveAll(purchaseHistoryDetails);
	}

	
	
    public void savePurchaseDetail(PurchaseHistoryDetail purchaseHistoryDetail) {
        purchaseHistoryDetailRepository.save(purchaseHistoryDetail);
    }
	
	
	
	
	public void savePurchaseDetailFromJson(String json) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			PurchaseHistoryDetail purchaseHistoryDetail = objectMapper.readValue(json, PurchaseHistoryDetail.class);
			purchaseHistoryDetailRepository.save(purchaseHistoryDetail);
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
