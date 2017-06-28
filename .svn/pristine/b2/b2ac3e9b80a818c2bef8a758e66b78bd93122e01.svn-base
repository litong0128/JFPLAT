<%@ page language="java" import="java.util.*, java.text.SimpleDateFormat" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s"  uri="/struts-tags"%>  
<%
  	String path = request.getContextPath();
  	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

  	String today = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
  	String month = new SimpleDateFormat("yyyyMM").format(Calendar.getInstance().getTime());

  	Calendar calendar = Calendar.getInstance();
  	calendar.setFirstDayOfWeek(Calendar.SUNDAY);
  	calendar.setTime(new Date());
  	int year = calendar.get(Calendar.YEAR);
  	int week = calendar.get(Calendar.WEEK_OF_YEAR);
  	String yearWeek = year + "" +((week<10)?("0"+week):(week));
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
    <title>控件展示</title>
    
  </head>  
    
  
<script language="javascript">
	$(function() {
		
		//---------------时间区间选取控件-----------------------------
		$( "#endDate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			buttonText: "Select date",
			
			showOtherMonths: true,
			selectOtherMonths: false,
			dateFormat: "yy-mm-dd",
			changeMonth: true,
			numberOfMonths: 1,
			onClose: function( selectedDate ) {

			}
		});
	});
</script>


<body>

	<div id="reportContent"><img alt="#" src="images/magnifier.gif">&nbsp;&nbsp;沃账户累计报表</div>
	<form action="${pageContext.request.contextPath}/wo_account_report_.action" method="post" target="reportFrame">
	<input type="hidden" name="reportCondis.reportName" value="/woaccount/wo_user_source_total_d.raq"/>
	<table id="filters"  class="ui-widget" style="width:100%;">
		<tr>
			<td>结束时间：</td><td><input type="text" id="endDate" name="reportCondis.endDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td align="center"><input type="submit" value="查询" class="ui-state-default ui-corner-all" ></td>
		</tr>
	</table>
	</form>
</body>
</html>  