package com.wistronits.tp2305.eshop.model.entity;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {

	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "USER_ID")
	private Integer userId;
	
	@Column(name = "USER_ACCOUNT", length = 30)
	private String userAccount;
	
	@Column(name = "USER_PASSWORD", length = 20)
	private String userPassword;
	
	@Column(name = "USER_NICKNAME", length = 50)
	private String userNickName;
	
	@Column(name = "USER_PHONE", length = 10)
	private String userPhone;
	
	@Column(name = "USER_CERTIFICATION_STATUS")
	private Integer userCertificationStatus;
	
	@Column(name = "USER_REGISTRATION_DATE")
	private Timestamp userRegistrationDate;
	
	@Column(name = "USER_PIC")
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
}
