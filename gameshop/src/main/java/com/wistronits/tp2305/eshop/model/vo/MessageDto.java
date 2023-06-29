package com.wistronits.tp2305.eshop.model.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

public class MessageDto {
	@JsonProperty("msg")
	private String text;

	public MessageDto() {
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
}
