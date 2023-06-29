package com.wistronits.tp2305.eshop.model.vo;

public class ProductVo {

	private Integer productId;
	private String  productName;
	private String  productType;
	private Integer productPrice;
	private Integer productCount;
	private String  productPhoto;
	
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getProductCount() {
		return productCount;
	}
	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}
	public String getProductPhoto() {
		return productPhoto;
	}
	public void setProductPhoto(String productPhoto) {
		this.productPhoto = productPhoto;
	}
	
	@Override
	public String toString() {
		return "ProductVo [productId=" + productId  + ", productName=" + productName
				+ ", productType=" + productType + ", productPrice=" + productPrice + ", productCount=" + productCount
				+ ", productPhoto=" + productPhoto + "]";
	}
	

	
	
}
