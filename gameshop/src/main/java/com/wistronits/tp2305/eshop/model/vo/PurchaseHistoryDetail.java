package com.wistronits.tp2305.eshop.model.vo;

import java.sql.Date;

public class PurchaseHistoryDetail {

	private Integer num;
	private String purchase_id;
	private Integer product_id;;
	private String product_name;
	private Integer product_quantity;
	private Integer product_price;
	private Date purchase_time;

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getPurchase_id() {
		return purchase_id;
	}

	public void setPurchase_id(String purchase_id) {
		this.purchase_id = purchase_id;
	}

	public Integer getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public Integer getProduct_quantity() {
		return product_quantity;
	}

	public void setProduct_quantity(Integer product_quantity) {
		this.product_quantity = product_quantity;
	}

	public Integer getProduct_price() {
		return product_price;
	}

	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}

	public Date getPurchase_time() {
		return purchase_time;
	}

	public void setPurchase_time(Date purchase_time) {
		this.purchase_time = purchase_time;
	}

	@Override
	public String toString() {
		return "PurchaseHistoryDetail [num=" + num + ", purchase_id=" + purchase_id + ", product_id=" + product_id
				+ ", product_name=" + product_name + ", product_quantity=" + product_quantity + ", product_price="
				+ product_price + ", purchase_time=" + purchase_time + "]";
	}

}