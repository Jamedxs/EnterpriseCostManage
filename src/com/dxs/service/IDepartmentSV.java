package com.dxs.service;

import com.dxs.bean.Department;

public interface IDepartmentSV {
	/**
	 * ʹ��userId��ȡ������ϢSV
	 * @param userId
	 * @return
	 * @author dengxusheng
	 * 2015-5-16
	 */
	public Department getDeptByUserId(int userId);
}
