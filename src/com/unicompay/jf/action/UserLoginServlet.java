package com.unicompay.jf.action;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.sinovatech.sso2.client.BaseUser;
import com.sinovatech.sso2.client.SSOConfig;
import com.unicompay.jf.model.UserBean;

/**
 * 2014年3月01日11:10:15
 * $
 * JFPLAT
 * UserLoginServlet.java
 * @author litong
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(UserLoginServlet.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getSession(false)==null){
			   System.out.println("Session has been invalidated!");
		
		}else {
			   System.out.println("Session is active!");
		}
		
		
		HttpSession session = request.getSession();
		// 获取 sso jar 包放到 AP session 中的信息
		BaseUser user = (BaseUser) session.getAttribute(SSOConfig.getSpflag());
		
		if (user == null) {
			//重定向测试
			//response.sendRedirect("http://192.168.8.61:8003/new/");
			//重定向生产
			response.sendRedirect("http://192.168.40.1:8088/Newman/");
			
		}else {
		// 转换为 AP 可以识别的 bean
		UserBean userBean=new UserBean(user);
		// 放到  AP 的 session 中
		session.setAttribute("userInfo", userBean);
		session.setAttribute("username", user.getReturnProperMap().get("userName"));
		
		
		//String loginFromUrl = (String) request.getAttribute("loginFromUrl");
		//String RelayState = (String) request.getAttribute("RelayState");
		
		// 跳转到期望页面
		//request.getRequestDispatcher(loginFromUrl).forward(request, response);
		
		// 转发
		request.getRequestDispatcher("/jsp/result.jsp").forward(request, response);
		
		//重定向
		//response.sendRedirect("http://192.168.8.61:8003/new/");
		}
	}
}
