
package com.unicompay.jf.action;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 2014年12月31日上午10:57:00
 * $
 * JFPLAT
 * BaseActionSupport.java
 * @author litong
 */
public abstract class BaseActionSupport extends ActionSupport implements SessionAware, ServletRequestAware, ServletResponseAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ActionContext context = ActionContext.getContext();   
	protected HttpServletRequest request;   
	private HttpServletResponse response;   
	protected SessionMap session;

	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	public SessionMap getSession() {
		return session;
	}
	public void setSession(SessionMap session) {
		this.session = session;
	}
	public void setSession(Map map) {   
	      this.session = (SessionMap) map;   
	}   
	public void setServletRequest(HttpServletRequest request) {   
	      this.request = request;   
	}   
	public void setServletResponse(HttpServletResponse response) {   
	      this.response = response;   
	} 
	
	
}
