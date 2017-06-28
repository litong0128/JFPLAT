<%@ page language="java" import="java.util.*, java.text.SimpleDateFormat" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s"  uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 

String today=new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()); 
String month=new SimpleDateFormat("yyyyMM").format(Calendar.getInstance().getTime()); 
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
    <title>控件展示</title>
    
  </head>  
    
  
<script language="javascript">
$(function() {
	//---------------滑出选择框控件---------------------------------
	
	//一个商户选择框
	var outObj = $("#channel");
	var pre = "channel";
	var text = "渠道来源&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_channelData.action?proflag=001"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	
	
	//---------------时间区间选取控件-----------------------------
	var dateFlag = 1; //0表示当前日期控件是精确到月，1表示当前日期控件是精确到日
	$( "#startDate" ).datepicker({
		showOn: "button",
	    buttonImage: "images/calendar.gif",
	    buttonImageOnly: true,
	    buttonText: "Select date",
		
	    showOtherMonths: true,
	    selectOtherMonths: false,
	    dateFormat: "yymmdd",
	    changeMonth: true,
	    numberOfMonths: 1,
	    onClose: function( selectedDate ) {
	    	if(dateFlag == 0){
	    		changeTo(selectedDate);
	    	}else if(dateFlag == 1){
	    		$( "#endDate" ).datepicker( "option", "minDate", selectedDate );
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
	    dateFormat: "yymmdd",
	    changeMonth: true,
	    numberOfMonths: 1,
	    onClose: function( selectedDate ) {
	    	//alert(selectedDate);
	    	if(dateFlag == 0){
	    		changeFrom(selectedDate);
	    	}else if(dateFlag == 1){
	    		$( "#startDate" ).datepicker( "option", "maxDate", selectedDate );
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
	
	//精确度日月切换
	$("#reportType").change(function(){
		if($(this).val() == "mReport"){
			//月
			dateFlag = 0;
			$( "#startDate" ).datepicker( "option", "dateFormat", "yymm" );
			$( "#endDate" ).datepicker( "option", "dateFormat", "yymm" );
			//更改最大最小时间限制
			$( "#endDate" ).datepicker( "option", "minDate", new Date("1900","1","1") );
			$( "#startDate" ).datepicker( "option", "maxDate", new Date("2900","1","1") );
			$( "#startDate" ).val("<%=month %>");
			$( "#endDate" ).val("<%=month %>");
			$("#reportfile").val("/ctzz/user_transfer_m.raq");
		}else if($(this).val() == "dReport"){
			//日
			dateFlag = 1;
			$( "#startDate" ).datepicker( "option", "dateFormat", "yymmdd" );
			$( "#endDate" ).datepicker( "option", "dateFormat", "yymmdd" );
			$( "#startDate" ).val("<%=today %>");
			$( "#endDate" ).val("<%=today %>");
			$("#reportfile").val("/ctzz/user_transfer_d.raq");
		}
	});
	
});
</script>


<body>

	<div id="reportContent"><img alt="#" src="images/magnifier.gif">&nbsp;&nbsp;用户转账报表</div>
	<form action="${pageContext.request.contextPath}/ctzz_report_.action" method="post" target="reportFrame">
	<input type="hidden" id = "reportfile" name="reportCondis.reportName" value="/ctzz/user_transfer_d.raq"/>
	<table id="filters"  class="ui-widget" style="width:100%;">
		<tr>
			<td >报表类型：</td>
			<td>
			<select id="reportType" class="text ui-widget-content ui-corner-all">
				<option value="dReport">日报</option>
				<option value="mReport">月报</option>
			</select>
			</td>
			<td>开始时间：</td><td><input type="text" id="startDate" name="reportCondis.startDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td>结束时间：</td><td><input type="text" id="endDate" name="reportCondis.endDate" value="<%=today %>" style="width:150px;" class="text ui-widget-content ui-corner-all"></td>
			<td>渠道来源：</td><td><div id="channel"></div></td>
			<td align="center"><input type="submit" value="查询" class="ui-state-default ui-corner-all" ></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			
		</tr>
		<tr>
				
		</tr>
		
	</table>
	</form>
</body>
</html>  