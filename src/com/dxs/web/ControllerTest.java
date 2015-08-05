package com.dxs.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dxs.service.IPersonSV;
import com.dxs.bean.Person;

@Controller
public class ControllerTest {
	public ControllerTest() {}
	
	private IPersonSV personSV;
	private Person person;
	public IPersonSV getPersonSV() {
		return personSV;
	}
	public void setPersonSV(IPersonSV personSV) {
		this.personSV = personSV;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
	@RequestMapping(value = "/jdbc.do")
	public String getPersonById(@RequestParam("id")int id){
		person=personSV.getPersonById(id);
		System.out.println(person.getName());
		return "welcome";
	}

	@RequestMapping(value="hrefUrl.do")
	public String hrefUrl(@RequestParam("password")String password){
		System.out.println("*********************");
		System.out.println(password);
		System.out.println("*********************");
		return "welcome";
	}
	
}
