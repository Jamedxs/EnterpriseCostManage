package com.dxs.bean;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;


public class User {
	
	public User(){}
	
	private int userId;
	private int deptId;
	private int positionId;
	private int authorityId;
	private String password;
	private String username;
	private String sex;
	private int age;
	private String email;
	private Date birthDate;
	private String phoneNumber;
	private String zipcode;
	private String adderss;
	private String IDcard;
	private String ext1;
	private String ext2;
	private Department department;
	private List<Role> role;
	@Id
	@GeneratedValue
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public int getAuthorityId() {
		return authorityId;
	}
	public void setAuthorityId(int authorityId) {
		this.authorityId = authorityId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAdderss() {
		return adderss;
	}
	public void setAdderss(String adderss) {
		this.adderss = adderss;
	}
	public String getIDcard() {
		return IDcard;
	}
	public void setIDcard(String iDcard) {
		IDcard = iDcard;
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

	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public List<Role> getRole() {
		return role;
	}
	public void setRole(List<Role> role) {
		this.role = role;
	}
	public User(int userId, int deptId, int positionId, int authorityId, String password, String username, String sex, int age, String email,
			Date birthDate, String phoneNumber, String zipcode, String adderss, String iDcard, String ext1, String ext2) {
		super();
		this.userId = userId;
		this.deptId = deptId;
		this.positionId = positionId;
		this.authorityId = authorityId;
		this.password = password;
		this.username = username;
		this.sex = sex;
		this.age = age;
		this.email = email;
		this.birthDate = birthDate;
		this.phoneNumber = phoneNumber;
		this.zipcode = zipcode;
		this.adderss = adderss;
		IDcard = iDcard;
		this.ext1 = ext1;
		this.ext2 = ext2;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", deptId=" + deptId + ", positionId=" + positionId + ", authorityId=" + authorityId + ", password="
				+ password + ", username=" + username + ", sex=" + sex + ", age=" + age + ", email=" + email + ", birthDate=" + birthDate
				+ ", phoneNumber=" + phoneNumber + ", zipcode=" + zipcode + ", adderss=" + adderss + ", IDcard=" + IDcard + ", ext1=" + ext1
				+ ", ext2=" + ext2 + "]";
	}

}
