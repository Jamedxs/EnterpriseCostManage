package com.dxs.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

import com.dxs.bean.Person;
import com.dxs.dao.IPersonDAO;


@Component("iPersonDao")
public class PersonDAOImpl implements IPersonDAO {

	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public Person getPersonById(int id) {
		Person person=(Person) sqlSessionTemplate.selectOne("getPersonById",id);
		return person;
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
