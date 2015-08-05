package com.dxs.bean;
/**
 * 
 * 表述department表和user表之间的关系
 * @author dengxusheng
 *
 */
public class DeptUserLink {
	public DeptUserLink(){}
	private int dept_user_id;
	private User user;
	private Department department;
	private String ext1;
	private String ext2;
	public int getDept_user_id() {
		return dept_user_id;
	}
	public void setDept_user_id(int dept_user_id) {
		this.dept_user_id = dept_user_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
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
	
}
