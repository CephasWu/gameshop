package com.wistronits.tp2305.eshop.model.vo;

public class UserVo {
    private Long userId;
    private String userAccount;
    private String userPassword;
    private String userNickname;
    private int userCertificationStatus;
    private String userPhone;
    
    // Constructors, getters, and setters

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

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public int getUserCertificationStatus() {
		return userCertificationStatus;
	}

	public void setUserCertificationStatus(int userCertificationStatus) {
		this.userCertificationStatus = userCertificationStatus;
	}

	@Override
	public String toString() {
		return "UserVo [userId=" + userId + ", userAccount=" + userAccount + ", userPassword=" + userPassword
				+ ", userNickname=" + userNickname + ", userCertificationStatus=" + userCertificationStatus
				+ ", userPhone=" + userPhone + "]";
	}
    
    
}

