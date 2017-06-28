<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
System.out.println("loginFromUrl   "+request.getAttribute("loginFromUrl"));
 %>
<html>
	<head>	
	 
	</head>
	<%-- <body onLoad="window.top.location='<%=request.getAttribute("loginFromUrl") %>'"> --%>
	<body onLoad="window.location.href='<%=request.getAttribute("loginFromUrl") %>'">
			<!-- onLoad="window.top.location='http://www.baidu.com'" -->
	</body>
</html>