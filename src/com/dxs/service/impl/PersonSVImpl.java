package com.dxs.service.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.dxs.bean.Person;
import com.dxs.dao.IPersonDAO;
import com.dxs.service.IPersonSV;

@Component("iPersonService")
public class PersonSVImpl implements IPersonSV {
	
	private IPersonDAO personDao;

	public void setPersonDao(IPersonDAO personDao) {
		this.personDao = personDao;
	}

	public Person getPersonById(int id) {
		return personDao.getPersonById(id);
	}

	public List<Person> allPerson() {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertPerson(Person person) {
		// TODO Auto-generated method stub

	}

	public void updatePerson(Person person) {
		// TODO Auto-generated method stub

	}

	public void deletePerson(int personId) {
		// TODO Auto-generated method stub

	}

}
