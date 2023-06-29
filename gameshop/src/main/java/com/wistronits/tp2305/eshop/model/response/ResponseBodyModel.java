package com.wistronits.tp2305.eshop.model.response;

public class ResponseBodyModel<T> {

	private T responseBody;
	private boolean success = false;
	private String token;

	public T getRequestBody() {
		return responseBody;
	}

	public void setRequestBody(T responseBody) {
		this.responseBody = responseBody;
	}

	public boolean getSuccess() {
		return success;
	}
	
	public boolean setSuccess(boolean success) {
		this.success = success;
		
		return success;
	}

	public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

	@Override
	public String toString() {
		return "ResponseBodyModel [responseBody=" + responseBody.toString() +
			", success=" + success + ", token=" + token + "]";
	}

}