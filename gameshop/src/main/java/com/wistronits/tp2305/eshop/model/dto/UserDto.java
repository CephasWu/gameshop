package com.wistronits.tp2305.eshop.model.dto;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserDto {

    @JsonProperty("userId")
    private Long userId;

    @Pattern(regexp = "^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$", message = "不符合信件格式")
    @Size(max = 30, message = "User account should not exceed 30 characters")
    @JsonProperty("userAccount")
    private String userAccount;

    @Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*\\d)[a-zA-Z\\d]{10,20}$", message = "密碼至少10碼,需包含英數字")
    @Size(max = 20, message = "不能超過20個字")
    @JsonProperty("userPassword")
    private String userPassword;

    @Size(max = 30, message = "不能超過30個字")
    @JsonProperty("userNickname")
    private String userNickname;

    @Pattern(regexp = "[01]", message = "不合法字元")
    @JsonProperty("userCertificationStatus")
    private int userCertificationStatus;

    @Pattern(regexp = "09\\d{8}", message = "09開頭")
    @JsonProperty("userPhone")
    private String userPhone;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getUserCertificationStatus() {
		return userCertificationStatus;
	}

	public void setUserCertificationStatus(int userCertificationStatus) {
		this.userCertificationStatus = userCertificationStatus;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	
    
}

