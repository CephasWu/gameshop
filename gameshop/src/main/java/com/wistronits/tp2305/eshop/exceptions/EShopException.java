package com.wistronits.tp2305.eshop.exceptions;

public class EShopException extends RuntimeException{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String error;
	
	private String defaultMessage;

	
	
	public EShopException(String error, String defaultMessage) {
		super(defaultMessage);
		this.error = error;
		this.defaultMessage = defaultMessage;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getDefaultMessage() {
		return defaultMessage;
	}

	public void setDefaultMessage(String defaultMessage) {
		this.defaultMessage = defaultMessage;
	}
	
	
}
