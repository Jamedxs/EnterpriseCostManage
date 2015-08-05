package com.dxs.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component

public class Person {
	
	private Integer personId;
	private String name;
	private String age;
	
	@Id
	@GeneratedValue
	public Integer getPersonId() {
		return personId;
	}
	public void setPersonId(Integer personId) {
		this.personId = personId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	@Override
	public String toString() {
		String str="personId:"+personId+"\t name:"+name+"\t age:"+age;
		return str;
	}
	
	

}
