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
@Table(name = "purchase_history")
public class PurchaseHistory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NUM")
	private int num;

	@Column(name = "PURCHASE_ID")
	private String purchaseid;

	@Column(name = "PURCHASE_TOTAL")
	private int purchasetotal;

	@Column(name = "order_name")
	private String ordername;

	@Column(name = "order_phone")
	private int orderphone;

	@Column(name = "order_address")
	private String orderaddress;

	@Column(name = "order_email")
	private String orderemail;

	@Column(name = "PAYMENT")
	private String payment;

	@Column(name = "ORDER_TIME")
	private LocalDateTime ordertime;

	public PurchaseHistory() {
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

	public int getPurchasetotal() {
		return purchasetotal;
	}

	public void setPurchasetotal(int purchasetotal) {
		this.purchasetotal = purchasetotal;
	}

	public String getOrdername() {
		return ordername;
	}

	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}

	public int getOrderphone() {
		return orderphone;
	}

	public void setOrderphone(int orderphone) {
		this.orderphone = orderphone;
	}

	public String getOrderaddress() {
		return orderaddress;
	}

	public void setOrderaddress(String orderaddress) {
		this.orderaddress = orderaddress;
	}

	public String getOrderemail() {
		return orderemail;
	}

	public void setOrderemail(String orderemail) {
		this.orderemail = orderemail;
	}

	@PrePersist
	public void prePersist() {
		ordertime = LocalDateTime.now();
	}

	public LocalDateTime getPtime() {
		return ordertime;
	}

	public void setPtime(LocalDateTime ordertime) {
		this.ordertime = ordertime;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	
}
