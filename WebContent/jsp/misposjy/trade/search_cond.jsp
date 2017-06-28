<%@ page language="java" import="java.util.*, java.text.SimpleDateFormat" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s"  uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 

String today=new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()); 
String month=new SimpleDateFormat("yyyyMM").format(Calendar.getInstance().getTime()); 
String reportTitle = "MISPOS交易报表";
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
	//---------------滑出选择框控件---------------------------------

	
	//省份
	var outObj = $("#province");
	var pre = "province";
	var text = "省份&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_provinceDataN.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	//地市
	var outObj = $("#city");
	var pre = "city";
	var text = "地市&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_cityDataN.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	//支付工具
	var outObj = $("#payTool");
	var pre = "payTool";
	var text = "支付工具&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_payToolData.action?proflag=000"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	//业务场景
	var outObj = $("#busiScenario");
	var pre = "busiScenario";
	var text = "业务场景&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_busiScenarioData.action?proflag=004"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//交易类型
	var outObj = $("#tradeType");
	var pre = "tradeType";
	var text = "交易类型&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_tradeData.action?proflag=000"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//下拉菜单生成
	
	/* var selObj = $("#installment_num");
	var mUrl = "${pageContext.request.contextPath}/getData_installment_numData.action"; //获取数据的url
	
	selectadd(selObj,mUrl,""); */
	
	//---------------时间区间选取控件-----------------------------
	var dateFlag = 1; //0表示当前日期控件是精确到月，1表示当前日期控件是精确到日
	var reportfile_m = "/misposjy/mis_pos_trade_m.raq";//月报表文件
	var reportfile_d = "/misposjy/mis_pos_trade_d.raq";//日报表文件
	var picPath = "${pageContext.request.contextPath}/images/calendar.gif";
	var today = "<%=today %>";
	var month = "<%=month %>";
	initDatepicker(dateFlag,reportfile_m,reportfile_d,picPath,month,today);
});
</script>


<body>

	<div id="reportContent"><img alt="#" src="${pageContext.request.contextPath}/images/magnifier.gif">&nbsp;&nbsp;<%=reportTitle%></div>
	<form action="${pageContext.request.contextPath}/misposjy_report_.action" method="post" target="reportFrame">
	<input id="reportfile" type="hidden" name="reportCondis.reportName" value="/misposjy/mis_pos_trade_d.raq"/>
	<input id="reportfile" type="hidden" name="reportCondis.reportFileName" value="<%=reportTitle%>"/>
	<table id="filters"  class="ui-widget" style="width:100%;">
		<tr>
			<td>报表类型：</td><td>
			<select id="reportType" class="text ui-widget-content ui-corner-all">
				<option value="dReport">日报</option>
				<option value="mReport">月报</option>
			</select>
			</td>
			<td>开始时间：</td><td><input type="text" readonly="readonly" id="startDate" name="reportCondis.startDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td>结束时间：</td><td><input type="text" readonly="readonly" id="endDate" name="reportCondis.endDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			
			<td>支付工具：</td><td><div id="payTool"></div></td>
		</tr>
		<tr>
			<td>省份：</td><td><div id="province"></div></td>
			<td>地市：</td><td><div id="city"></div></td>
			
			<td>交易类型：</td><td><div id="tradeType"></div></td>
			<td align="center"><input type="submit" value="查询" class="ui-state-default ui-corner-all" ></td>	
		</tr>
		<tr>	
		</tr>
		
	</table>
	</form>
</body>
</html>  