package com.dxs.service;

import java.util.Map;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;

public interface IUserSV {
	/**
	 * 通过用户名和密码获取用户信息
	 * @param username
	 * @param password
	 * @return User
	 */
	public User getUserByUserNameAndPassword(String username,String password);
	/**
	 * 保存用户登录信息
	 * @param userLoginList
	 */
	public void addUserLoginList(UserLoginList userLoginList);
	
	/**
	 * 查询用户的个人信息（包括部门，用户和角色信息）
	 * @param userId
	 * @return User
	 * @author dengxusheng
	 * 2015-5-15
	 */
	public User showUserInfo(int userId);
	
}
