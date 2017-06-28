package com.unicompay.jf.model;

import org.springframework.stereotype.Component;


/**
 * Filename:AccountType.java
 * Description: 充值方式
 * @author litong
 * @date 2016年5月6日 下午4:00:52
 */
@Component
public class RechargeType extends DisplayObject{

	private String extra;
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}

}
