package com.unicompay.jf.util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
/**
 * 2015年3月10日上午10:37:00
 * $
 * JFPLAT
 * P3PFilter.java
 * @author litong
 */
public class P3PFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletResponse response = (HttpServletResponse) arg1;
		response.addHeader("P3P", "CP=CAO PSA OUR");
		/*response.setHeader("Access-Control-Allow-Origin", "*");
		response.addHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
        response.addHeader("Access-Control-Allow-Headers", "Content-Type, Authorization, Accept,X-Requested-With");
		response.setHeader("Content-Security-Policy", "upgrade-insecure-requests");*/
		arg2.doFilter(arg0, arg1);
	}

	public void init(FilterConfig arg0) throws ServletException {
	}
}