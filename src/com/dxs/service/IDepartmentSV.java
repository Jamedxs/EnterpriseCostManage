package com.dxs.service;

import com.dxs.bean.Department;

public interface IDepartmentSV {
	/**
	 * 使用userId获取部门信息SV
	 * @param userId
	 * @return
	 * @author dengxusheng
	 * 2015-5-16
	 */
	public Department getDeptByUserId(int userId);
}
