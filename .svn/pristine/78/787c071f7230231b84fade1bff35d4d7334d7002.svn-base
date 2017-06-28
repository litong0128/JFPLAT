package com.unicompay.jf.model;

import java.io.Serializable;

import com.sinovatech.sso2.client.BaseUser;

/**
 * UserBean from Attribute to Bean
 * 
 * @author jiangzhe
 */
public class UserBean  implements Serializable
{
	
	private String task;//个人用户存量标记
	private String custState;//客户状态
	private String realNameLevel;//用户实名级别
	private String hasPayPwd;//是否有支付密码
	private String lockFlag;//锁定标志
	private String fundStopPayState;//资金止付状态
	private String data;//扩展属生
	public String credences;//用户拥有的凭证	
	public String authedCredences;// 已授权，可以访问的凭证类别	
	public String ResultCode;//返回状态码	
	public String AuthTimes;//已经错误次数	
	public String AuthThreshold;//充许最多密码错误次数
	public String ssoSid;	

	public UserBean(BaseUser base)
	{
		this.task=(String)base.getReturnProperMap().get("task");
		this.custState=(String)base.getReturnProperMap().get("custState");
		this.realNameLevel=(String)base.getReturnProperMap().get("realNameLevel");
		this.hasPayPwd=(String)base.getReturnProperMap().get("hasPayPwd");
		this.lockFlag=(String)base.getReturnProperMap().get("lockFlag");
		this.fundStopPayState=(String)base.getReturnProperMap().get("fundStopPayState");
		this.data=(String)base.getReturnProperMap().get("data");
		this.authedCredences=base.authedCredences;
		this.credences=base.credences;
		this.AuthTimes=(String)base.getReturnProperMap().get("AuthTimes");
		this.AuthThreshold=(String)base.getReturnProperMap().get("AuthThreshold");
		this.ssoSid=base.ssoSid;

	}	

	@Override
	public String toString()
	{
		return "UserBean [authedCredences=" + authedCredences + ", credences=" + credences
				+ ", ResultCode="
				+ ResultCode + ", AuthTimes=" + AuthTimes
				+ ", AuthThreshold=" + AuthThreshold + ", task=" + task + ", custState="
				+ custState + ", realNameLevel=" + realNameLevel + ", hasPayPwd=" + hasPayPwd
				+ ", lockFlag=" + lockFlag + ",fundStopPayState=" + fundStopPayState + ",data="+data+",ssoSid="+ssoSid+"]";
	}
	
	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getCustState() {
		return custState;
	}

	public void setCustState(String custState) {
		this.custState = custState;
	}

	public String getRealNameLevel() {
		return realNameLevel;
	}

	public void setRealNameLevel(String realNameLevel) {
		this.realNameLevel = realNameLevel;
	}

	public String getHasPayPwd() {
		return hasPayPwd;
	}

	public void setHasPayPwd(String hasPayPwd) {
		this.hasPayPwd = hasPayPwd;
	}

	public String getLockFlag() {
		return lockFlag;
	}

	public void setLockFlag(String lockFlag) {
		this.lockFlag = lockFlag;
	}

	public String getFundStopPayState() {
		return fundStopPayState;
	}

	public void setFundStopPayState(String fundStopPayState) {
		this.fundStopPayState = fundStopPayState;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	
}
