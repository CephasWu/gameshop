package com.wistronits.tp2305.eshop.model.vo;

import java.sql.Date;

public class PurchaseHistoryVo {
	private String num;
	private String purchase_id;
	private Integer purchase_total;
	private String order_name;
	private Integer order_phone;
	private String order_address;
	private String order_email;
	private String payment;
	private Date ordertime;

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getPurchase_id() {
		return purchase_id;
	}

	public void setPurchase_id(String purchase_id) {
		this.purchase_id = purchase_id;
	}

	public Integer getPurchase_total() {
		return purchase_total;
	}

	public void setPurchase_total(Integer purchase_total) {
		this.purchase_total = purchase_total;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public Integer getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(Integer order_phone) {
		this.order_phone = order_phone;
	}

	public String getOrder_address() {
		return order_address;
	}

	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}

	public String getOrder_email() {
		return order_email;
	}

	public void setOrder_email(String order_email) {
		this.order_email = order_email;
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "PurchaseHistoryVo [num=" + num + ", purchase_id=" + purchase_id + ", purchase_total=" + purchase_total
				+ ", order_name=" + order_name + ", order_phone=" + order_phone + ", order_address=" + order_address
				+ ", order_email=" + order_email + ", payment=" + payment + ", ordertime=" + ordertime + "]";
	}

	

}