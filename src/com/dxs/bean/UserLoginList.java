package com.dxs.bean;

import java.util.Date;

public class UserLoginList {
	
	public UserLoginList(){}
	//登录信息实体
	private int loginId;
	private int userId;
	private Date loginTime;
	private String loginIP;
	private String ext1;
	private String ext2;
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	public String getExt1() {
		return ext1;
	}
	public void setExt1(String ext1) {
		this.ext1 = ext1;
	}
	public String getExt2() {
		return ext2;
	}
	public void setExt2(String ext2) {
		this.ext2 = ext2;
	}
	@Override
	public String toString() {
		return "UserLoginList [loginId=" + loginId + ", userId=" + userId + ", loginTime=" + loginTime + ", loginIP=" + loginIP + ", ext1=" + ext1
				+ ", ext2=" + ext2 + "]";
	}
	public UserLoginList(int loginId, int userId, Date loginTime, String loginIP, String ext1, String ext2) {
		super();
		this.loginId = loginId;
		this.userId = userId;
		this.loginTime = loginTime;
		this.loginIP = loginIP;
		this.ext1 = ext1;
		this.ext2 = ext2;
	}
	
	
	
}
