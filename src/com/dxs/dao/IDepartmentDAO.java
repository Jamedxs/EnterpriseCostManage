package com.dxs.dao;

import com.dxs.bean.Department;

public interface IDepartmentDAO {
	/**
	 * ʹ��userId��ȡ������ϢDAO
	 * @param userId
	 * @return
	 * @author dengxusheng
	 * 2015-5-16
	 */
	public Department getDeptByUserId(int userId);
}
