package com.dxs.dao;

import java.util.Map;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;

public interface IUserDAO {
	/**
	 * ͨ���û����������ȡ�û���Ϣ
	 * @param username
	 * @param password
	 * @return User
	 */
	public User getUserByUserNameAndPassword(String username,String password);
	/**
	 * 
	 * @param username
	 * @return
	 * @author dengxusheng
	 * 2015-5-13
	 */
	public User getUserByUserName(String username);
	/**
	 * �����û���¼��Ϣ
	 * @param userLoginList
	 */
	public void addUserLoginList(UserLoginList userLoginList);
	
	/**
	 * ��ѯ�û��ĸ�����Ϣ���������ţ��û��ͽ�ɫ��Ϣ��
	 * @param userId
	 * @return
	 * @author dengxusheng
	 * 2015-5-16
	 */
	public User showUserInfo(int userId);
}
