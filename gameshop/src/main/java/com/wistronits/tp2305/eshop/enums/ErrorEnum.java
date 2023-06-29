package com.wistronits.tp2305.eshop.enums;

public enum ErrorEnum {
	SYSTEM( "system", "操作異常"),
	LOGIN( "login", "帳號或密碼有誤"),
	QUANTITY_ERROR("stock", "庫存不足");
	
	ErrorEnum(String code, String description) {
		this.code = code;
		this.description = description;
	}
	
	private String code;
	private String description;
	
	public String getCode() {
		return code;
	}
	
	public String getDescription() {
		return description;
	}
	
	
}
