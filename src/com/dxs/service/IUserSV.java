package com.dxs.service;

import java.util.Map;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;

public interface IUserSV {
	/**
	 * ͨ���û����������ȡ�û���Ϣ
	 * @param username
	 * @param password
	 * @return User
	 */
	public User getUserByUserNameAndPassword(String username,String password);
	/**
	 * �����û���¼��Ϣ
	 * @param userLoginList
	 */
	public void addUserLoginList(UserLoginList userLoginList);
	
	/**
	 * ��ѯ�û��ĸ�����Ϣ���������ţ��û��ͽ�ɫ��Ϣ��
	 * @param userId
	 * @return User
	 * @author dengxusheng
	 * 2015-5-15
	 */
	public User showUserInfo(int userId);
	
}
