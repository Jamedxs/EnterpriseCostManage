package com.dxs.bean;

import java.util.List;

public class Department {
	public Department(){}
	
	private int deptId;
	private String deptName;
	private String deptDescribe;
	private String loginRole;
	private String costStandard;
	private String ext1;
	private String ext2;
//	private List<User> user;
	
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptDescribe() {
		return deptDescribe;
	}
	public void setDeptDescribe(String deptDescribe) {
		this.deptDescribe = deptDescribe;
	}
	public String getLoginRole() {
		return loginRole;
	}
	public void setLoginRole(String loginRole) {
		this.loginRole = loginRole;
	}
	public String getCostStandard() {
		return costStandard;
	}
	public void setCostStandard(String costStandard) {
		this.costStandard = costStandard;
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
/*	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}*/
	
	
	
}
