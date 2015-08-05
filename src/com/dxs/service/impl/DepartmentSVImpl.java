package com.dxs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import com.dxs.bean.Department;
import com.dxs.dao.IDepartmentDAO;
import com.dxs.service.IDepartmentSV;

@Service("departmentSVImpl")
public class DepartmentSVImpl implements IDepartmentSV {
	
	@Autowired
	private IDepartmentDAO departmentDAO;
	
	public Department getDeptByUserId(int userId) {
		return departmentDAO.getDeptByUserId(userId);
	}
}
