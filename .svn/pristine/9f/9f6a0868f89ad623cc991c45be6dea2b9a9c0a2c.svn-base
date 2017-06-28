package com.unicompay.jf.util;
import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

/**
 * 2015年1月30日上午10:37:00
 * $
 * JFPLAT
 * ReportParamTools.java
 * @author litong
 */
@Component
public class ReportParamTools {
	
	public String getParam(HttpServletRequest request){
		
		String report = request.getParameter( "raq" );
		//String reportFileHome=Context.getInitCtx().getMainDir();
		StringBuffer param=new StringBuffer();
		if((report.lastIndexOf(".raq")) <= 0 ){
			report = report + ".raq";
		}
		
		Enumeration<?> paramNames = request.getParameterNames();
		if(paramNames!=null){
			while(paramNames.hasMoreElements()){
				String paramName = (String) paramNames.nextElement();
				String paramValue=request.getParameter(paramName);
				if(paramValue!=null){
					//把参数拼成name=value;name2=value2;.....的形式
					param.append(paramName).append("=").append(paramValue).append(";");
				}
			}
		}
		//以下代码是检测这个报表是否有相应的参数模板
		//String paramFile = report.substring(0,iTmp)+"_arg.raq";
		//File f=new File(application.getRealPath(reportFileHome+ File.separator +paramFile));
		return param.toString();
	}
	
	//根据对象反射生成报表参数串
	public String getParam(Object object){
		 Class<? extends Object> clazz = object.getClass();  
		 Field[] fields = object.getClass().getDeclaredFields();
		 //定义法返回串
		 String param = "";
		 //定义拼接临时字符串
		 String tmpStr = "";
		 
		 for (Field field : fields) {
            //System.out.println(field.getName()+field.getGenericType());//打印该类的所有属性名称
            PropertyDescriptor pd;
            //如果是私有变量进行取值拼串
            if(Modifier.toString(field.getModifiers()).endsWith("private")){
            	try {
    				 pd = new PropertyDescriptor(field.getName(), clazz);
    				 Method getMethod = pd.getReadMethod();//获得get方法  
    				 tmpStr = (String) getMethod.invoke(object);//执行get方法返回一个Object 
    				 if("all".equals(tmpStr)){
    			    	param += field.getName()+"_t=1;";
    			     }else {
    			    	param += field.getName()+"_t=0;";	
    			     }
    				 
    				 param += field.getName()+"="+tmpStr+";";
    			} catch (IntrospectionException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} catch (IllegalArgumentException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} catch (IllegalAccessException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} catch (InvocationTargetException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} 
            }   
		 }
		return param;
	}
}
