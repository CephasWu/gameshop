package com.wistronits.tp2305.eshop.model.vo;

import java.sql.Date;

public class ShippingVo {
	
	private Integer num;
	private Integer product_id;
	private Integer member_id;
	private String member_email;
	private String product_name;
	private Integer product_quantity;
	private Integer product_price;
	private String product_state;
	private Date product_time;
	private String product_picture;
	
	
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}
	public Integer getMember_id() {
		return member_id;
	}
	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
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
	public String getProduct_state() {
		return product_state;
	}
	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}
	public Date getProduct_time() {
		return product_time;
	}
	public void setProduct_time(Date product_time) {
		this.product_time = product_time;
	}
	
	
	
	public String getProduct_picture() {
		return product_picture;
	}
	public void setProduct_picture(String product_picture) {
		this.product_picture = product_picture;
	}
	@Override
	public String toString() {
		return "ShippingVo [num=" + num + ", product_id=" + product_id + ", member_id=" + member_id + ", member_email="
				+ member_email + ", product_name=" + product_name + ", product_quantity=" + product_quantity
				+ ", product_price=" + product_price + ", product_state=" + product_state + ", product_time="
				+ product_time + ", product_picture=" + product_picture + "]";
	}

	
}