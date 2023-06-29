package com.wistronits.tp2305.eshop.model.request;

public class RequestBodyModel<T> {

	private T requestBody;
	private String type;
	private String token;

	public T getRequestBody() {
		return requestBody;
	}

	public void setRequestBody(T requestBody) {
		this.requestBody = requestBody;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "RequestBodyModel [requestBody=" + requestBody.toString() + ", type=" + type + ", token=" + token + "]";
	}

}
