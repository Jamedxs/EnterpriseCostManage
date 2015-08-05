package com.dxs.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxs.bean.Department;
import com.dxs.dao.IDepartmentDAO;

@Repository
public class DepartmentDAOImpl implements IDepartmentDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Department getDeptByUserId(int userId) {
		
		return (Department)sqlSessionTemplate.selectOne("selectDeptByUserId", userId);
	}

}
