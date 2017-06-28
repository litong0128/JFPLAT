/*
 * 1.输入框下滑出框控件（包括自动搜索功能）
 *  valueBox的name="reportCondition.'+pre+'"
 * */

//封装输入框下滑出框控件html
function popBoxHtml(outObj, pre, text){
	var html = '<div id="'+pre+'inputBox">'+
		/*'<label>'+text+'：</label>'+*/
		'<input type="text" value="全部汇总" id="'+pre+'displayBox" class="'+pre+'popBox text ui-widget-content ui-corner-all" style="width:150px;" readonly>'+
		'<input type="text" value="all" name="reportCondis.'+pre+'" id="'+pre+'valueBox" style="display:none;" >'+
		'<button id="'+pre+'popBoxButton" type="button" class ="'+pre+'popBox" style="width:20px; height:20px;" ></button>'+
		'</div>'+
		'<div id="'+pre+'box" class="slipBox ui-widget-content ui-corner-all searchFrame " style="display:none; z-index:999; position:absolute; width:550px; font-size:15px;">'+
		'<label for="'+pre+'search">模糊查询：</label>'+
		'<input type="text" id="'+pre+'search" name="'+pre+'search" class="text ui-widget-content ui-corner-all">'+
		'<input type="checkbox" id="'+pre+'all1" class="'+pre+'all" name="'+pre+'all" value="all" checked="checked"><label for="'+pre+'all1">全部汇总</label>'+
		'<input type="checkbox" id="'+pre+'all2" class="'+pre+'all" name="'+pre+'all" value=""><label for="'+pre+'all2">全部明细</label>'+
		'<hr>'+
		'<div id="'+pre+'entitySet" style="width:550px; height:150px; overflow:auto; white-space:nowrap; margin-left:auto; margin-right:auto;" class="searchFrameContent">'+
		'<div id="'+pre+'set1" style="display:inline-block; vertical-align:top; margin-left:5px;"></div>'+
		'<div id="'+pre+'set2" style="display:inline-block; vertical-align:top; margin-left:5px;"></div>'+
		'<div id="'+pre+'set3" style="display:inline-block; vertical-align:top; margin-left:5px;"></div>'+
		'<div id="'+pre+'set4" style="display:inline-block; vertical-align:top; margin-left:5px;"></div>'+
		'</div>'+
		'<hr>'+
		'<div id="'+pre+'tempArea" class="tempArea"></div>'+
		'<hr>'+
		'<button id="'+pre+'sure" class="ui-state-default ui-corner-all" type="button" style="float:right; margin-right:20px; margin-bottom:5px;">确定</button>'+
		'<button id="'+pre+'cancel" class="ui-state-default ui-corner-all" type="button" style="float:right; margin-right:10px; margin-bottom:5px;">取消</button>'+
		'</div>';
	outObj.append(html);
	
}

//响应各种标签的动作控制
function popBoxAction(pre, mUrl){
	var mDivs = [$("#"+pre+"set1"), $("#"+pre+"set2"), $("#"+pre+"set3"), $("#"+pre+"set4")]; //放置获取数据的四个div
	var displayBox = $("#"+pre+"displayBox"); //显示的写值输入框
	var valueBox = $("#"+pre+"valueBox"); //提交的写值输入框
	var popBoxButton = $("#"+pre+"popBoxButton"); //弹出滑出框的按钮
	var popClass = $("."+pre+"popBox"); //响应弹出动作类
	var box = $("#"+pre+"box"); //整个下面滑出框
	var search = $("#"+pre+"search"); //滑出框中的搜索框
	var all1 = $("#"+pre+"all1"); //全部汇总复选框
	var all2 = $("#"+pre+"all2"); //全部明细复选框
	var allClass = $("."+pre+"all"); //两个“全部”复选框的类
	var sure = $("#"+pre+"sure"); //勾选完成之后的确认按钮
	var cancel = $("#"+pre+"cancel"); //取消滑出框中的所有选择按钮
	var eName = pre+"entity";  //滑出框中的实体名称(name)
	var tempArea = $("#"+pre+"tempArea"); //暂存区域
	
	//---------------------------以下是各种事件的响应处理----------------------------------
	//点击box外部隐藏box，必须的
	$(document).click(function(e){
		//alert("ghj");
		if(box.is(":visible")){
			box.hide();
		}
	});
	//点击box外部隐藏box，必须的
	box.click(function(e){
		e = e||event;
		e.stopPropagation?e.stopPropagation():e.cancelBubble = true;
	});
	
	popClass.click(function(e){
		if(box.is(":visible")){
			box.hide();
		}else{
			initPopBox(pre, mUrl, mDivs, eName, box, search, all1, all2);
			//点击box外部隐藏box，必须的
			e = e||event;
			e.stopPropagation?e.stopPropagation():e.cancelBubble = true;
		}
	});
	
	sure.click(function(){
		hideBox(box); //隐藏商户数据
		setCheckedValues(all1, all2, eName, displayBox, valueBox, tempArea); //获取选择商户
		//alert(getValueFromValueBox(pre));
		//当省份为全部汇总时候更新地市显示为全部汇总
		var provBox = $("#provincevalueBox");
		var cityBox = $("#cityvalueBox");
		if(provBox.val() == 'all'){
			//alert(cityBox.val());
			cityBox.val("all");
			$("#citydisplayBox").val("全部汇总");
			//alert(cityBox.val());
		}
		
		
	});
	cancel.click(function(){
		hideBox(box); //隐藏商户数据
	});
	
	
	all1.on('ifClicked', function(event){
		//取消已选择的
		$("input[name='"+eName+"']:checked").each(function(){
			$(this).iCheck('uncheck');
		});
		//禁用或者启用
		if(all1.prop("checked") == true && all2.prop("checked") == false ){
			$("input[name='"+eName+"']").iCheck('enable');
			search.prop("disabled", false);
		}else{
			$("input[name='"+eName+"']").iCheck('disable');
			search.prop("disabled", true);
		}
		//清空暂存区域
		tempArea.children().remove();
		//all1,all2只选一个
		if(all1.prop("checked") == false){ //这里判断的是点击之前的状态
			all2.iCheck('uncheck');
		}
	});
	
	all2.on('ifClicked', function(event){
		//取消已选择的
		$("input[name='"+eName+"']:checked").each(function(){
			$(this).iCheck('uncheck');
		});
		//禁用或者启用
		if(all1.prop("checked") == false && all2.prop("checked") == true ){
			$("input[name='"+eName+"']").iCheck('enable');
			search.prop("disabled", false);
		}else{
			$("input[name='"+eName+"']").iCheck('disable');
			search.prop("disabled", true);
		}
		//清空暂存区域
		tempArea.children().remove();
		//all1,all2只选一个
		if(all2.prop("checked") == false){ //这里判断的是点击之前的状态
			all1.iCheck('uncheck');
		}
	});
	
	//添加按钮小图标
	popBoxButton.button({
		icons: {
        	primary: "ui-icon-search"
    	},
    	text: false
    });
	
	//改变checkbox的样式
	$("input[name='"+pre+"all']").iCheck({
		checkboxClass: 'icheckbox_polaris',
		
	});
	
}

//获取提交的写值输入框中的内容
function getValueFromValueBox(pre){
	var valueBox = $("#"+pre+"valueBox"); //提交的写值的输入框
	return trim(valueBox.val());
}

//获取显示的写值输入框中的内容
function getValueFromDisplayBox(pre){
	var displayBox = $("#"+pre+"displayBox"); //提交的写值的输入框
	return trim(displayBox.val());
}

//初始化弹出框
function initPopBox(pre, mUrl, mDivs, eName, box, search, all1, all2){
	showBox(box); //展示商户数据
	//0.校验控件的位置
	var browserWidth = document.documentElement.clientWidth;
	//var browserHeight = document.documentElement.clientHeight;
	var scrollX = document.documentElement.scrollLeft || document.body.scrollLeft;
	//var scrollY = document.documentElement.scrollTop || document.body.scrollTop;
	var offleft = box.offset().left; //box的左边偏移量
	var width = box.width(); //box的宽度
	if((offleft + width) > (browserWidth + scrollX)){
		box.css("left", (browserWidth + scrollX - width - 5) + "px");
	} 
	
	//1.获得提交的写值输入框（隐藏）的当前值
	var curValue = getValueFromValueBox(pre).split(",");
	//2.判断all或""包含在curValue中，改变勾选状态
	if($.inArray("", curValue) != -1){
		//当前勾选状态
		all1.iCheck('uncheck');
		all2.iCheck('check');
		//搜索框禁用
		search.prop("disabled", true);
	}else if($.inArray("all", curValue) != -1){
		//当前勾选状态
		all1.iCheck('check');
		all2.iCheck('uncheck');
		//搜索框禁用
		search.prop("disabled", true);
	}
	//3.获取显示的写值输入框的内容
	var curDisplay = getValueFromDisplayBox(pre).split(",");
	//4.初始化暂存区域
	var tempArea = $("#"+pre+"tempArea"); //暂存区域
	initTempArea(tempArea, curValue, curDisplay);
	//5.获取暂存区域的元素id
	var curTemp = getValueFromTempArea(pre);
	//6.加载默认商户数据
	loadDatas(mUrl, "", mDivs, eName, all1, all2, curTemp, pre);
	
	search.val(""); //清空搜索框
	searchTime(search, mUrl, mDivs, eName, pre); //启动模糊自动搜索
	
}

//加载商户信息，并显示在选择框内，参数("/getusers", "12", sets, "user", all1, all2)
//load数据时，传向后台的参数名称为“search”
function loadDatas(mUrl, mData, mDivs, eName, all1, all2, curTemp, pre) {
	var sendData = {"search":encodeURI(mData)};
	if(pre == "city"){
		$("#cityall2").iCheck('enable');
		$("#cityall1").iCheck('enable');
		var provBox = $("#provincevalueBox");
		if(provBox.val() == 'all'){
			//$("#cityall1").attr("onclick","return false;");
			$("#cityall1").iCheck('check');
			$("#cityall2").iCheck('uncheck');
			$("#cityall2").iCheck('disable');
			$("#cityall1").iCheck('disable');
			//alert($("#provincevalueBox").val());
		}
		if(provBox.size() > 0){
			var provName = provBox.val();
			sendData["provName"] = encodeURI(provName);
		}
	}
	$.ajax({
		url:mUrl,
		type:'GET',
		data: sendData,
		dataType:'json',
		success:function(data){
			//alert(data);
			var mod = data.length % 4;
			var quo = Math.floor(data.length/4);
			var end = [0,0,0,0,0];
			for(var i=1; i<end.length; i++){
				end[i] = end[i-1] + (mod <= 0 ? quo : quo+1);
				mod = mod - 1;
			}
			//alert(end);
			//根据获取的数据添加复选框
			for(var i=0; i<mDivs.length; i++){
				mDivs[i].empty(); //清空div
			}
			$.each(data, function(n, value){
				//alert("data n:"+n+" "+data.length);
				var checkBox = "";
				if(all1 != "" && all2 != "" && (all1.prop("checked") == true || all2.prop("checked") == true)){
					checkBox = "<input type='checkbox' disabled='true' id='"+eName+n+"' name='"+eName+"' value="+value.id+" ><label for='"+eName+n+"'>"+value.id+"-"+value.name+"</label><br>";
				}else{
					//判断是否是当前选择的，勾选上
					if($.inArray(value.id+"", curTemp) != -1){
						checkBox = "<input type='checkbox' checked='true' id='"+eName+n+"' name='"+eName+"' value="+value.id+" ><label for='"+eName+n+"'>"+value.id+"-"+value.name+"</label><br>";
					}else{
						checkBox = "<input type='checkbox' id='"+eName+n+"' name='"+eName+"' value="+value.id+" ><label for='"+eName+n+"'>"+value.id+"-"+value.name+"</label><br>";
					}
				}
				
				if(n >= end[0] && n < end[1]){
					mDivs[0].append(checkBox);
				}else if(n >= end[1] && n < end[2]){
					mDivs[1].append(checkBox);
				}else if(n >= end[2] && n < end[3]){
					mDivs[2].append(checkBox);
				}else if(n >= end[3] && n < end[4]){
					mDivs[3].append(checkBox);
				}
			});
			//alert("oh yeah！加载成功啦"+data);
			//数据加载成功之后，更改checkbox的样式
			$("input[name='"+eName+"']").iCheck({
				checkboxClass: 'icheckbox_minimal-blue',
			});
			//绑定checkbox的点击事件
			$("input[name='"+eName+"']").on('ifClicked', function(event){
				var checkObj = $(this);
				var checkValue = this.value;
				var temp = '<div id="'+checkValue+'" class="aa_cont apadd_suc"><span>'+checkObj.parent().next().text()+'</span></div>';
				var tempArea = $("#"+pre+"tempArea"); //暂存区域
				if(checkObj.prop("checked") == false){
					tempArea.append(temp);
				}else{
					tempArea.find("#"+checkValue).remove();
				}
			});
		},
		error:function(){
			alert("oh my god!加载出错了哦");
		}
	});
	
}

//实现模糊自动搜索
function searchTime(search, mUrl, mDivs, eName, pre){
	search.bind('focus',{search:search, mUrl:mUrl, mDivs:mDivs, eName:eName, pre:pre},search_Time);
	
}
var start_str = '';  
var now_str = '';
//周期扫描输入框值的变化，当输入框失去焦点时清除周期任务
function search_Time(event){
	//周期任务的对象
	var time = setInterval(loadData_Time, 500,event.data.search, event.data.mUrl, event.data.mDivs, event.data.eName, event.data.pre);
     $(this).bind('blur',function(){  
         clearInterval(time);   
     });  
}
//判断搜索框值是否有变化，如果有变化则请求查询
function loadData_Time(search, mUrl, mDivs, eName, pre){
	now_str = $.trim(search.val());  
    if ( now_str != start_str) {  
    	var curTemp = getValueFromTempArea(pre);
		loadDatas(mUrl, search.val(), mDivs, eName, "", "", curTemp, pre); //查询数据的方法
    }  
    start_str = now_str; 
}

//显示商户选择框
function showBox(box){
	if(box.is(":hidden")){
		box.show();
	}
	//展示此滑出框的同时关闭其他滑出框
	$(".slipBox").each(function(n, value){
		//alert(value);
		//alert($(value).attr('id') != box.attr('id'));
		if($(value).attr('id') != box.attr('id')){
			hideBox($(value));
		}
	});
}
//隐藏商户选择框
function hideBox(box){
	if(box.is(":visible")){
		box.hide();
	}
}

//获取已选择的复选框值,设在选择框内
function setCheckedValues(all1, all2, checkBoxName, displayBox, valueBox, tempArea){
	var chkValue = [];
	var chkDisplay = [];
	if(all1.prop("checked") == true){
		chkDisplay.push(all1.parent().next().text());
		chkValue.push(all1.val());
	}else if(all2.prop("checked") == true){
		chkDisplay.push(all2.parent().next().text());
		chkValue.push(all2.val());
	}else{
		tempArea.children().each(function(){
			chkDisplay.push($(this).children().text());
			chkValue.push($(this).attr('id'));
		});
	}
	
	//如果什么也没选择，默认chkValue是""，chkDisplay是"全部明细".
	if(chkDisplay.length == 0){
		chkDisplay.push(all2.parent().next().text());
	}
	valueBox.val(chkValue);
	displayBox.val(chkDisplay);
}


//复选框选中之后，将其暂存在下面的暂存区域
function clickTempStore(pre, check){
	var checkObj = $(check);
	var checkValue = check.value;
	var temp = '<div id="'+checkValue+'" class="aa_cont apadd_suc"><span>'+checkObj.parent().next().text()+'</span></div>';
	var tempArea = $("#"+pre+"tempArea"); //暂存区域
	if(checkObj.prop("checked") == true){
		tempArea.append(temp);
	}else{
		tempArea.find("#"+checkValue).remove();
	}
	//tempArea.append(temp);
	//alert(check.value);
}

//在显示整个滑出框时，初始化暂存区域
function initTempArea(tempArea, curValue, curDisplay){
	//1.清空暂存区域
	tempArea.children().remove();
	//2.排除全部汇总和全部明细
	if(curValue.length == 1 && (curValue[0] == "all" || curValue[0] == "")){
		return;
	}
	//3.添加
	var len = curValue.length;
	for(var i=0; i<len; i++){
		var temp = '<div id="'+curValue[i]+'" class="aa_cont apadd_suc"><span>'+curDisplay[i]+'</span></div>';
		tempArea.append(temp);
	}
}

//获取暂存区域的元素的id值
function getValueFromTempArea(pre){
	var val = [];
	var tempArea = $("#"+pre+"tempArea"); //暂存区域
	tempArea.children().each(function(){
		val.push($(this).attr('id'));
	});
	return val;
}


//====================================================================
// 供使用者调用
function trim(s) {
	return trimRight(trimLeft(s));
}
// 去掉左边的空白
function trimLeft(s) {
	if (s == null) {
		return "";
	}
	var whitespace = new String(" \t\n\r");
	var str = new String(s);
	if (whitespace.indexOf(str.charAt(0)) != -1) {
		var j = 0, i = str.length;
		while (j < i && whitespace.indexOf(str.charAt(j)) != -1) {
			j++;
		}
		str = str.substring(j, i);
	}
	return str;
}
// 去掉右边的空白
function trimRight(s) {
	if (s == null)
		return "";
	var whitespace = new String(" \t\n\r");
	var str = new String(s);
	if (whitespace.indexOf(str.charAt(str.length - 1)) != -1) {
		var i = str.length - 1;
		while (i >= 0 && whitespace.indexOf(str.charAt(i)) != -1) {
			i--;
		}
		str = str.substring(0, i + 1);
	}
	return str;
}