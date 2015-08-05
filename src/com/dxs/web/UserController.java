package com.dxs.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dxs.bean.Department;
import com.dxs.bean.User;
import com.dxs.service.IDepartmentSV;
import com.dxs.service.IUserSV;
import com.dxs.util.Common;

@Controller
public class UserController {
	
	private Logger log = Logger.getLogger(UserController.class);
	
	private User user;
	private Department dept;
	@Autowired
	private IUserSV userSV;
	@Autowired
	private IDepartmentSV departmentSV;
	
	@RequestMapping(value="/showuserinfo.do")
	public ModelAndView showUserInfo(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/user/showuserinfo");
		//��session��ȡ��user��Ϣ
		try {
			user = (User)request.getSession().getAttribute(Common.USER_SESSION);
			if(user == null) 
				throw new Exception("session��ȡ�����û���ϢuserΪ��");
			int userId = user.getUserId();
			if(userId == 0)
				throw new Exception("userIdΪ��");
			//����userId ��ѯ�û��Ĳ�����Ϣ
			dept = departmentSV.getDeptByUserId(userId);
			modelAndView.addObject("user", user);
			modelAndView.addObject("dept", dept);
		} catch (Exception e) {
			log.error(e);
		}
		
		//modelAndView.addObject(attributeName, attributeValue);
		return modelAndView;
	}
	
	public String showAllUserInfo(){
		//��ѯ�������û�����Ϣ
		
		
		return "/user/showAllUserinfo";
	}
}
