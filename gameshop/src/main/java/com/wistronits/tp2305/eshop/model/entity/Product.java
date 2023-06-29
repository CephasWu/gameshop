package com.wistronits.tp2305.eshop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "video_game")
public class Product {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_Id")
	private int product_Id;

	@Column(name = "product_Name")
	private String product_Name;

	@Column(name = "product_Type")
	private String product_Type;
	
	@Column(name = "product_Price")
	private int product_Price;
	
	@Column(name = "product_Count")
	private int product_Count;

	@Column(name = "product_Photo")
	private String product_Photo;
	
	public Product() {
	}

	public int getProduct_Id() {
		return product_Id;
	}

	public void setProduct_Id(int product_Id) {
		this.product_Id = product_Id;
	}

	public String getProduct_Name() {
		return product_Name;
	}

	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}

	public String getProduct_Type() {
		return product_Type;
	}

	public void setProduct_Type(String product_Type) {
		this.product_Type = product_Type;
	}

	public int getProduct_Price() {
		return product_Price;
	}

	public void setProduct_Price(int product_Price) {
		this.product_Price = product_Price;
	}

	public int getProduct_Count() {
		return product_Count;
	}

	public void setProduct_Count(int product_Count) {
		this.product_Count = product_Count;
	}

	public String getProduct_Photo() {
		return product_Photo;
	}

	public void setProduct_Photo(String product_Photo) {
		this.product_Photo = product_Photo;
	}

	

}