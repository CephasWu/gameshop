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
@Table(name = "purchase_history_detail")
public class PurchaseHistoryDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NUM")
	private int num;

	@Column(name = "PURCHASE_ID")
	private String purchaseid;

	@Column(name = "PRODUCT_ID")
	private int productid;

	@Column(name = "PRODUCT_NAME")
	private String productname;

	@Column(name = "PRODUCT_QUANTITY")
	private int productquantity;

	@Column(name = "PRODUCT_PRICE")
	private int productprice;

	@Column(name = "PURCHASE_TIME")
	private LocalDateTime purchasetime;

	public PurchaseHistoryDetail() {
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPurchaseid() {
		return purchaseid;
	}

	public void setPurchaseid(String purchaseid) {
		this.purchaseid = purchaseid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	@PrePersist
	public void prePersist() {
		purchasetime = LocalDateTime.now();
	}

	public LocalDateTime getPtime() {
		return purchasetime;
	}

	public void setPtime(LocalDateTime purchasetime) {
		this.purchasetime = purchasetime;
	}

}
