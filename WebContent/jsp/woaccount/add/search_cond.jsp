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
		//金融通道
		var outObj = $("#userSource");
		var pre = "userSource";
		var text = "用户来源&nbsp;";
		var mUrl = "${pageContext.request.contextPath}/getData_userSourceData.action"; //获取数据的url
		popBoxHtml(outObj, pre, text);
		popBoxAction(pre, mUrl);
		
		//省份
		var outObj = $("#province");
		var pre = "province";
		var text = "省份&nbsp;";
		var mUrl = "${pageContext.request.contextPath}/getData_provinceData.action"; //获取数据的url
		popBoxHtml(outObj, pre, text);
		popBoxAction(pre, mUrl);
		
		//地市
		var outObj = $("#city");
		var pre = "city";
		var text = "地市&nbsp;";
		var mUrl = "${pageContext.request.contextPath}/getData_cityData.action"; //获取数据的url
		popBoxHtml(outObj, pre, text);
		popBoxAction(pre, mUrl);
		
		
		//---------------时间区间选取控件-----------------------------
		var dateFlag = 0; //0表示当前日期控件是精确到月，1表示当前日期控件是精确到日，2表示当前日期控件是精确到周
		$( "#startDate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			buttonText: "Select date",
			
			showOtherMonths: true,
			selectOtherMonths: false,
			dateFormat: "yymm",
			changeMonth: true,
			numberOfMonths: 1,
			onClose: function( selectedDate ) {
				if(dateFlag == 0){
					changeTo(selectedDate);
				}else if(dateFlag == 1){
					$( "#endDate" ).datepicker( "option", "minDate", selectedDate );
				}else if(dateFlag == 2){
					//alert(selectedDate);
					changeToYear(selectedDate);
				}
			}
		});
		$( "#endDate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			buttonText: "Select date",
			
			showOtherMonths: true,
			selectOtherMonths: false,
			dateFormat: "yymm",
			changeMonth: true,
			numberOfMonths: 1,
			onClose: function( selectedDate ) {
				
				if(dateFlag == 0){
					changeFrom(selectedDate);
				}else if(dateFlag == 1){
					$( "#startDate" ).datepicker( "option", "maxDate", selectedDate );
				}else if(dateFlag == 2){
					changeFromYear(selectedDate);
				}
			}
		});
		//时间控件精确到月的onclose事件
		function changeTo(selectedDate){
			//alert(selectedDate);
			var selectedDate = selectedDate.substr(0,4)+'/'+selectedDate.substr(4,2);
			var month = new Date(selectedDate).getMonth(); 
			var year = new Date(selectedDate).getFullYear();
			var date = new Date(year, month, 1);
			if($("#endDate").val() != ""){
				var t = $("#endDate").val();
				var vt = t.substr(0,4)+'/'+t.substr(4,2)+'/'+'01';
				var toDate = new Date(vt);
				//alert(year+' '+month+' '+vt);
				if(date.getTime() > toDate.getTime()){
					alert("开始时间应小于等于结束时间");
					$("#startDate").val("");
				}
			}
		}
		function changeFrom(selectedDate){
			var selectedDate = selectedDate.substr(0,4)+'/'+selectedDate.substr(4,2);
			var month = new Date(selectedDate).getMonth(); 
			var year = new Date(selectedDate).getFullYear(); 
			var date = new Date(year, month, 1);
			if($("#startDate").val() != ""){
				var f = $("#startDate").val();
				var vf = f.substr(0,4)+'/'+f.substr(4,2)+'/'+'01';
				var fromDate = new Date(vf);
				if(fromDate.getTime() > date.getTime()){
					alert("结束时间应大于等于开始时间");
					$("#endDate").val("");
				}
			}
		}

		//时间控件精确到年的onclose事件
		function changeToYear(selectedDate){
			//alert(selectedDate);
			var ww = getYearNumber(selectedDate);
			//alert(ww);
			$("#startDate").val(ww);
			if($("#endDate").val() != ""){
				var t = $("#endDate").val();
				if(ww > t){
					alert("开始时间应小于等于结束时间");
					$("#startDate").val("");
				}
			}
		}
		function changeFromYear(selectedDate){
			//alert(selectedDate);
			var ww = getYearNumber(selectedDate);
			//alert(ww);
			$("#endDate").val(ww);
			if($("#startDate").val() != ""){
				var f = $("#startDate").val();
				if(f > ww){
					alert("结束时间应大于等于开始时间");
					$("#endDate").val("");
				}
			}
		}

		//得到日期的年份
		function getYearNumber(d) {
			// Copy date so don't modify original
			//alert(d.length);
			if(d.length != 10){ //处理不选择时间
				d = new Date();
			}else{
				d = new Date(d);
			}
			// Return year and week number
			var getFullYear = d.getFullYear();
			return getFullYear;
		}
		
		//精确度日月年切换
		$("#reportType").change(function(){
			if($(this).val() == "mReport"){
				//月
				dateFlag = 0;
				$("input[name='reportCondis.reportName']").val('/woaccount/wo_user_source_add_m.raq');
				$( "#startDate" ).datepicker( "option", "dateFormat", "yymm" );
				$( "#endDate" ).datepicker( "option", "dateFormat", "yymm" );
				//更改最大最小时间限制
				$( "#endDate" ).datepicker( "option", "minDate", new Date("1900","1","1") );
				$( "#startDate" ).datepicker( "option", "maxDate", new Date("2900","1","1") );
				$( "#startDate" ).val("<%=month %>");
				$( "#endDate" ).val("<%=month %>");
			}else if($(this).val() == "dReport"){
				//日
				dateFlag = 1;
				$("input[name='reportCondis.reportName']").val('/woaccount/wo_user_source_add_d.raq');
				$( "#startDate" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
				$( "#endDate" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
				$( "#startDate" ).val("<%=today %>");
				$( "#endDate" ).val("<%=today %>");
			}else if($(this).val() == "wReport"){
				//年
				dateFlag = 2;
				$("input[name='reportCondis.reportName']").val('/woaccount/wo_user_source_add_y.raq');
				$( "#startDate" ).datepicker( "option", "dateFormat", "yy/mm/dd" );
				$( "#endDate" ).datepicker( "option", "dateFormat", "yy/mm/dd" );
				//更改最大最小时间限制
				$( "#endDate" ).datepicker( "option", "minDate", new Date("1900","1","1") );
				$( "#startDate" ).datepicker( "option", "maxDate", new Date("2900","1","1") );
				$( "#startDate" ).val("<%=year %>");
				$( "#endDate" ).val("<%=year %>");
			}
		});
	});
</script>


<body>

	<div id="reportContent"><img alt="#" src="images/magnifier.gif">&nbsp;&nbsp;沃账户新增报表</div>
	<form action="${pageContext.request.contextPath}/wo_account_report_execute.action" method="post" target="reportFrame">
	<input type="hidden" name="reportCondis.reportName" value="/woaccount/wo_user_source_add_m.raq"/>
	<table id="filters"  class="ui-widget" style="width:100%;">
		<tr>
			<td>报表类型：</td><td>
			<select id="reportType" class="text ui-widget-content ui-corner-all">
				<option value="mReport">月报</option>
				<option value="dReport">日报</option>
				<option value="wReport">年报</option>
			</select>
			</td>
			<td>开始时间：</td><td><input type="text" id="startDate" name="reportCondis.startDate" value="<%=month %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td>结束时间：</td><td><input type="text" id="endDate" name="reportCondis.endDate" value="<%=month %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td align="center"><input type="submit" value="查询" class="ui-state-default ui-corner-all" ></td>
		</tr>
		<tr>
			<td>省份：</td><td><div id="province"></div></td>
			<td>地市：</td><td><div id="city"></div></td>
			
			<td></td>
		</tr>
		<tr>
			<td>用户来源：</td><td><div id="userSource"></div></td>
			<td></td><td><div id="payTool"></div></td>
			
			<td></td>
		</tr>
	</table>
	</form>
</body>
</html>  