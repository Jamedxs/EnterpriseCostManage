package com.dxs.service;

import java.util.List;

import com.dxs.bean.Person;

public interface IPersonSV {
	public Person getPersonById(int id);
	public List<Person> allPerson();
	public void insertPerson(Person person);
	public void updatePerson(Person person);
	public void deletePerson(int personId);

}
