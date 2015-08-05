package com.dxs.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;
import com.dxs.dao.IUserDAO;

@Repository
public class UserDAOImpl implements IUserDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public User getUserByUserNameAndPassword(String username,String password) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		return (User) sqlSessionTemplate.selectOne("getUserByUserNameAndPassword", user);
	}
	
	public void addUserLoginList(UserLoginList userLoginList) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("insertUserLoginList", userLoginList);
	}
	
	public User getUserByUserName(String username) {
		return (User) sqlSessionTemplate.selectOne("getUserByUserName", username);
	}
	
	public User showUserInfo(int userId) {
		return (User) sqlSessionTemplate.selectOne("selectUserDept",userId);
	}
}
