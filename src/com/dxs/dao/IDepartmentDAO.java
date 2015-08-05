package com.dxs.dao;

import com.dxs.bean.Department;

public interface IDepartmentDAO {
	/**
	 * 使用userId获取部门信息DAO
	 * @param userId
	 * @return
	 * @author dengxusheng
	 * 2015-5-16
	 */
	public Department getDeptByUserId(int userId);
}
