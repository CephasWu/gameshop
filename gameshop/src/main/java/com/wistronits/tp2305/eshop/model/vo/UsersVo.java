package com.wistronits.tp2305.eshop.model.vo;

import java.sql.Timestamp;
import java.util.Arrays;

public class UsersVo {
	private Integer userId;
	private String userAccount;
	private String userPassword;
	private String userNickName;
	private String userPhone;
	private Integer userCertificationStatus;
	private Timestamp userRegistrationDate;
	private int[] userPic;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
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
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public Integer getUserCertificationStatus() {
		return userCertificationStatus;
	}
	public void setUserCertificationStatus(Integer userCertificationStatus) {
		this.userCertificationStatus = userCertificationStatus;
	}
	public Timestamp getUserRegistrationDate() {
		return userRegistrationDate;
	}
	public void setUserRegistrationDate(Timestamp userRegistrationDate) {
		this.userRegistrationDate = userRegistrationDate;
	}
	public int[] getUserPic() {
		return userPic;
	}
	public void setUserPic(int[] userPic) {
		this.userPic = userPic;
	}
	@Override
	public String toString() {
		return "UsersVo [userId=" + userId + ", userAccount=" + userAccount + ", userPassword=" + userPassword
				+ ", userNickName=" + userNickName + ", userPhone=" + userPhone + ", userCertificationStatus="
				+ userCertificationStatus + ", userRegistrationDate=" + userRegistrationDate + ", userPic="
				+ Arrays.toString(userPic) + "]";
	}
	
}
