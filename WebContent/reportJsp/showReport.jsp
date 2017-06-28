<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/runqianReport4.tld" prefix="report"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<%@ page import="com.unicompay.jf.util.CalReportUtils"%>
<%@ page import="com.runqian.report4.model.ReportDefine"%>
<%@ page import="com.runqian.report4.util.ReportUtils"%>
<%
	
	String appmap = request.getContextPath();	
	String firstPageImage = "<img src='" + appmap + "/images/firstpage.gif' border=no >";
	String lastPageImage = "<img src='" + appmap + "/images/lastpage.gif' border=no >";
	String nextPageImage = "<img src='" + appmap + "/images/nextvpage.gif' border=no >";
	String prevPageImage = "<img src='" + appmap + "/images/prevpage.gif' border=no >";
	String submitImage = "<img src='" + appmap + "/images/savedata.gif' border=no >";
	String report = String.valueOf(request.getAttribute("report"));
	String param = String.valueOf(request.getAttribute("param"));
	String reportFileName = String.valueOf(request.getAttribute("reportFileName"));
	if(param != null&&report != null&&report!="null"&&param != "null"){
		session.setAttribute("report", report);
		session.setAttribute("param", param);
	}
	
	if (report.equals("null")||param.equals("null")){
		report = String.valueOf(session.getAttribute("report"));
		param = String.valueOf(session.getAttribute("param"));
	}
	
	//通过工具类获取一个context对象,从而创建出报表运行所需环境
	Context ctx = CalReportUtils.getContext();
	request.setAttribute( "myContext", ctx );
	%>
<html>
<script src="<%=appmap%>/js/jquery/jquery.js"></script>
<link type="text/css" href="<%=appmap%>/css/style.css" rel="stylesheet" />
<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>
	<jsp:include page="toolbar_head.jsp" flush="false" />
	<table id="rpt" align="center">
		<tr>
			<report:html name="report1" reportFileName="<%=report%>"
				funcBarLocation="bottom" contextName="myContext" needPageMark="yes"
				generateParamForm="no" params="<%=param%>"
				firstPageLabel="<%=firstPageImage%>"
				prevPageLabel="<%=prevPageImage%>"
				nextPageLabel="<%=nextPageImage%>"
				lastPageLabel="<%=lastPageImage%>"
				saveAsName="<%=reportFileName%>"
				exceptionPage="/reportJsp/myError.jsp"
				appletJarName="runqianReport4Applet.jar,dmGraphApplet.jar"
				displayNoLinkPageMark="yes" />
		</tr>
	</table>
<script type="text/javascript" >
	$(document.body).css("background-color","#C1D8FA");
	$(".report1").hide();
	document.getElementById( "t_page_span" ).innerHTML=report1_getTotalPage();
	document.getElementById( "c_page_span" ).innerHTML=report1_getCurrPage();
</script>
</body>
</html>
