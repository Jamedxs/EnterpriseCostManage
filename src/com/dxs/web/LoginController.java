package com.dxs.web;

import java.lang.ProcessBuilder.Redirect;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dxs.bean.User;
import com.dxs.bean.UserLoginList;
import com.dxs.service.IUserSV;
import com.dxs.util.Common;

@Controller("loginController")
public class LoginController {
	
	public LoginController() {}
	
	private User user;
	//private UserLoginList userLoginList;
	
	@Autowired
	private IUserSV userSV;
	@Autowired
	private AuthenticationManager myAuthenticationManager;
	
	@RequestMapping(value="/login.do")
	public String getUserById(String username,String password,HttpServletRequest request){
		//user = userSV.getUserByUserName(username);
		try {
			if(Common.isEmpty(username) || Common.isEmpty(password)){
				request.setAttribute("error", "�û��������벻��Ϊ�գ�");
			}
			//��֤�û��˺��������Ƿ���ȷ
			user = userSV.getUserByUserNameAndPassword(username, password);
			if (user == null || !user.getPassword().equals(password)) {
				request.setAttribute("error", "�û��������벻��ȷ��");
				return "redirect:/login.jsp";
			}
			Authentication authentication = myAuthenticationManager.authenticate
					(new UsernamePasswordAuthenticationToken(username, password));
			SecurityContext securityContext = SecurityContextHolder.getContext();
			securityContext.setAuthentication(authentication);
			HttpSession session = request.getSession(true);
			session.setAttribute(Common.SPRING_SECURITY_CONTEXT, securityContext);
			//����֤���user��Ϣ�ŵ�session��
			request.getSession().setAttribute(Common.USER_SESSION, user);
			//��¼��¼����Ϣ
			UserLoginList userLoginList = new UserLoginList();
			userLoginList.setUserId(user.getUserId());
			userLoginList.setLoginTime(new Date());
			userLoginList.setLoginIP(Common.toIpAddr(request));
			userSV.addUserLoginList(userLoginList);
			
		} catch (Exception e) {
			request.setAttribute("error", "��¼�쳣������ϵ����Ա��");
		    return "redirect:/login.jsp";
		}
	
		return "main";
	}

}
