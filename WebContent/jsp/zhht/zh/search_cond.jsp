<%@ page language="java" import="java.util.*, java.text.SimpleDateFormat" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s"  uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 

String today=new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()); 
String month=new SimpleDateFormat("yyyyMM").format(Calendar.getInstance().getTime());
Calendar calendar = Calendar.getInstance();
calendar.setFirstDayOfWeek(Calendar.SUNDAY);
calendar.setTime(new Date());
int year = calendar.get(Calendar.YEAR);
int week = calendar.get(Calendar.WEEK_OF_YEAR);
String yearWeek = year + "" +((week<10)?("0"+week):(week));
String reportTitle = "账户互通综合报表";
%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- jquery ui css -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/jquery-ui-1.11.2/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/jquery-ui-1.11.2/jquery-ui.structure.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/jquery-ui-1.11.2/jquery-ui.theme.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/iCheck-1.x/skins/all.css">
	<link type="text/css" href="<%=path%>/css/style_common.css" rel="stylesheet"/>
	
	<!-- jquery and ui js -->
	
	<script src="<%=path%>/js/jquery/jquery.js"></script>
	<script src="<%=path%>/js/jquery-ui-1.11.2/jquery-ui.min.js"></script>
	<script src="<%=path%>/js/iCheck-1.x/icheck.js"></script>
	<script src="<%=path%>/js/widget_icheck.js"></script>
	<script src="<%=path%>/js/widget_select.js"></script>
	<script src="<%=path%>/js/widget_datepicker.js"></script>
    <title>控件展示</title>
  </head>  
    
<script language="javascript">
$(function() {
	
	//下拉菜单生成
	
	/* var selObj = $("#installment_num");
	var mUrl = "${pageContext.request.contextPath}/getData_installment_numData.action"; //获取数据的url
	
	selectadd(selObj,mUrl,""); */
	
	//---------------时间区间选取控件-----------------------------
	var dateFlag = 1; //0表示当前日期控件是精确到月，1表示当前日期控件是精确到日，2表示当前日期控件是精确到周
	var reportfile_m = "/zhht/zh/tas_overall_d.raq";//月报表文件
	var reportfile_d = "/zhht/zh/tas_overall_d.raq";//日报表文件
	var reportfile_w = "/zhht/zh/tas_overall_d.raq";//周报表文件
	var picPath = "${pageContext.request.contextPath}/images/calendar.gif";
	var today = "<%=today %>";
	var week = "<%=yearWeek %>";
	var month = "<%=month %>";
	initDatepicker(dateFlag,reportfile_m,reportfile_d,picPath,month,today,week,reportfile_w);
});
</script>

<body>

	<div id="reportContent"><img alt="#" src="${pageContext.request.contextPath}/images/magnifier.gif">&nbsp;&nbsp;<%=reportTitle%></div>
	<form action="${pageContext.request.contextPath}/zhht_report_.action" method="post" target="reportFrame">
	<input id="reportfile" type="hidden" name="reportCondis.reportName" value="/zhht/zh/tas_overall_d.raq"/>
	<input id="reportfile" type="hidden" name="reportCondis.reportFileName" value="<%=reportTitle%>"/>
	<table id="filters"  class="ui-widget" style="width:100%;">
		<tr>
			<td>报表类型：</td><td>
			<select id="reportType" class="text ui-widget-content ui-corner-all">
				<option value="dReport">日报</option>
				<!-- <option value="wReport">周报</option> 
				<option value="mReport">月报</option>-->
			</select>
			</td>
			<td>开始时间：</td><td><input type="text" readonly="readonly" id="startDate" name="reportCondis.startDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<%-- <td>结束时间：</td><td><input type="text" readonly="readonly" id="endDate" name="reportCondis.endDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td> --%>
		</tr>
		
		<tr>
			<td>省份：</td><td><div id="province"></div></td>
			<td>渠道类型：</td><td><div id="channel"></div></td>
			<td align="center"><input type="submit" value="查询" class="ui-state-default ui-corner-all" ></td>
		</tr>		
	</table>
	</form>
	<script src="<%=path%>/js/kj.js"></script>
</body>
</html>  