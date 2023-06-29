package com.wistronits.tp2305.eshop.model.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;

@Entity
@Table(name = "shipping_cart_temp")
public class Shipping {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NUM")
	private int num;

	@Column(name = "PRODUCT_ID")
	private int productid;

	@Column(name = "MEMBER_ID")
	private int memberid;

	@Column(name = "MEMBER_EMAIL")
	private String member_email;

	@Column(name = "PRODUCT_NAME")
	private String product_name;

	@Column(name = "PRODUCT_QUANTITY")
	private int product_quantity;

	@Column(name = "PRODUCT_PRICE")
	private int product_price;

	@Column(name = "PRODUCT_STATE")
	private String product_state;

	@Column(name = "PRODUCT_TIME")
	private LocalDateTime product_time;

	@Column(name = "PRODUCT_PICTURE")
	private String productpicture;

	public Shipping() {
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getProductid() {
		return productid;
	}

	public void setProduct_id(int productid) {
		this.productid = productid;
	}

	public int getMemberid() {
		return memberid;
	}

	public void setMember_id(int memberid) {
		this.memberid = memberid;
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

	public int getProduct_quantity() {
		return product_quantity;
	}

	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_state() {
		return product_state;
	}

	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}

	@PrePersist
	public void prePersist() {
		product_time = LocalDateTime.now();
	}

	public LocalDateTime getPtime() {
		return product_time;
	}

	public void setPtime(LocalDateTime product_time) {
		this.product_time = product_time;
	}

	public String getProductpicture() {
		return productpicture;
	}

	public void setProductpicture(String productpicture) {
		this.productpicture = productpicture;
	}
	
	
}
