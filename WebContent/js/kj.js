	//商户
	var outObj = $("#merchant");
	var pre = "merchant";
	var text = "商户名称&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_merchantData.action?proflag=000"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);	

	//银行
	var outObj = $("#bank");
	var pre = "bank";
	var text = "银&nbsp;&nbsp;&nbsp;&nbsp;行&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_bankData.action?"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	//省份
	var outObj = $("#province");
	var pre = "province";
	var text = "省份&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_provinceDataN.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	var outObj = $("#city");
	var pre = "city";
	var text = "地市&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_cityDataN.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	
	/*//省份按照手机号
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
	popBoxAction(pre, mUrl);*/
	
	//渠道
	var outObj = $("#channel");
	var pre = "channel";
	var text = "渠道来源&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_channelData.action?proflag=004"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//支付工具
	var outObj = $("#payTool");
	var pre = "payTool";
	var text = "支付工具&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_payToolData.action?proflag=000"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//充值方式
	var outObj = $("#rechargeType");
	var pre = "rechargeType";
	var text = "支付工具&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_rechargeTypeData.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//业务场景
	var outObj = $("#busiScenario");
	var pre = "busiScenario";
	var text = "业务场景&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_busiScenarioData.action"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//金融通道
	var outObj = $("#finaChannel");
	var pre = "finaChannel";
	var text = "金融通道&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_finaChannelData.action?proflag=000"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//缴存类型
	var outObj = $("#depositeType");
	var pre = "depositeType";
	var text = "缴存类型&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_depositeTypeData.action?"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	
	//卡类型
	var outObj = $("#cardType");
	var pre = "cardType";
	var text = "卡类型&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_cardTypeData.action?"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//交易状态
	var outObj = $("#tradeState");
	var pre = "tradeState";
	var text = "交易状态&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_tradeStateData.action?"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	//商户业务类型
	var outObj = $("#merBusiType");
	var pre = "merBusiType";
	var text = "商户业务类型&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_merBusiTypeData.action?"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	
	//机构等级
	var outObj = $("#levelOrg1");
	var pre = "levelOrg1";
	var text = "商户业务类型&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_levelOrgData.action?orglevel=1"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	var outObj = $("#levelOrg2");
	var pre = "levelOrg2";
	var text = "二级机构&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_levelOrgData.action?orglevel=2"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
	
	var outObj = $("#levelOrg3");
	var pre = "levelOrg3";
	var text = "三级机构&nbsp;";
	var mUrl = "${pageContext.request.contextPath}/getData_levelOrgData.action?orglevel=3"; //获取数据的url
	popBoxHtml(outObj, pre, text);
	popBoxAction(pre, mUrl);
