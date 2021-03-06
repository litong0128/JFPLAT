package com.unicompay.jf.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * @author GuoYankui
 * @version Feb 6, 2015 10:38:18 AM
 * 
 * 报表查询条件类
 */
@Component
public class ReportCondis implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4627898878198473573L;
	private String startDate;//开始时间
	private String endDate;//结束时间
	private String busiScenario;//业务场景
	private String payTool;//支付工具
	private String finaChannel;//金融通道
	private String bank;//发卡行（银行）
	private String reportName;//报表名称
	private String reportFileName;//报表下载保存名称
	private String userSource;//用户
	private String province;//省份
	private String city;//城市
	private String installment_num;//分期数 :1期，3期，6期，12期
	private String channel;//渠道
	private String accountType;//账户类型：对公，对私
	private String rechargeType;//充值方式
	private String merchant;//商户
	private String tradeType;//交易类型
	private String depositeType;//缴存方式
	private String cardType;//卡类型
	private String tradeState;//交易状态
	private String merBusiType;//商户业务类型
	private String levelOrg1;//机构1
	private String levelOrg2;
	private String levelOrg3;
	
	
	public String getUserSource() {
		return userSource;
	}
	public void setUserSource(String userSource) {
		this.userSource = userSource;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getBusiScenario() {
		return busiScenario;
	}
	public void setBusiScenario(String busiScenario) {
		this.busiScenario = busiScenario;
	}
	public String getPayTool() {
		return payTool;
	}
	public void setPayTool(String payTool) {
		this.payTool = payTool;
	}
	public String getFinaChannel() {
		return finaChannel;
	}
	public void setFinaChannel(String finaChannel) {
		this.finaChannel = finaChannel;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	
	public String getReportName() {
		return reportName;
	}
	public void setReportName(String reportName) {
		this.reportName = reportName;
	}
	public String getReportFileName() {
		return reportFileName;
	}
	public void setReportFileName(String reportFileName) {
		this.reportFileName = reportFileName;
	}
	public String getInstallment_num() {
		return installment_num;
	}
	public void setInstallment_num(String installment_num) {
		this.installment_num = installment_num;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	
	public String getAccountType() {
		return accountType;
	}
	public String getLevelOrg1() {
		return levelOrg1;
	}
	public void setLevelOrg1(String levelOrg1) {
		this.levelOrg1 = levelOrg1;
	}
	public String getLevelOrg2() {
		return levelOrg2;
	}
	public void setLevelOrg2(String levelOrg2) {
		this.levelOrg2 = levelOrg2;
	}
	public String getLevelOrg3() {
		return levelOrg3;
	}
	public void setLevelOrg3(String levelOrg3) {
		this.levelOrg3 = levelOrg3;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getRechargeType() {
		return rechargeType;
	}
	public void setRechargeType(String rechargeType) {
		this.rechargeType = rechargeType;
	}
	public String getMerchant() {
		return merchant;
	}
	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}
	public String getTradeType() {
		return tradeType;
	}
	public void setTradeType(String tradeType) {
		this.tradeType = tradeType;
	}
	public String getDepositeType() {
		return depositeType;
	}
	public void setDepositeType(String depositeType) {
		this.depositeType = depositeType;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getTradeState() {
		return tradeState;
	}
	public void setTradeState(String tradeState) {
		this.tradeState = tradeState;
	}
	public String getMerBusiType() {
		return merBusiType;
	}
	public void setMerBusiType(String merBusiType) {
		this.merBusiType = merBusiType;
	}
	
	@Override
	public String toString() {
		return "ReportCondis [startDate=" + startDate + ", endDate=" + endDate
				+ ", busiScenario=" + busiScenario + ", payTool=" + payTool
				+ ", finaChannel=" + finaChannel + ", bank=" + bank
				+ ", reportName=" + reportName + ", reportFileName="
				+ reportFileName + ", userSource=" + userSource + ", province="
				+ province + ", city=" + city + ", installment_num="
				+ installment_num + ", channel=" + channel + ", accountType="
				+ accountType + ", rechargeType=" + rechargeType
				+ ", merchant=" + merchant + ", tradeType=" + tradeType
				+ ", depositeType=" + depositeType + ", cardType=" + cardType
				+ ", tradeState=" + tradeState + ", merBusiType=" + merBusiType
				+ ", levelOrg1=" + levelOrg1 + ", levelOrg2=" + levelOrg2
				+ ", levelOrg3=" + levelOrg3 + "]";
	}
	
}
