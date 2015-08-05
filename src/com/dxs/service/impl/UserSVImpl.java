package com.dxs.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;
import com.dxs.dao.IUserDAO;
import com.dxs.service.IUserSV;

@Service("userService")
public class UserSVImpl implements IUserSV {
	
	@Autowired
	private IUserDAO userDao;

	public User getUserByUserNameAndPassword(String username,String password) {

		return userDao.getUserByUserNameAndPassword(username,password);
	}
	public void addUserLoginList(UserLoginList userLoginList) {
		userDao.addUserLoginList(userLoginList);
	}
	
	public User showUserInfo(int userId) {
		// TODO Auto-generated method stub
		return userDao.showUserInfo(userId);
	}

}
