package com.unicompay.jf.model;

import org.springframework.stereotype.Component;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 10:55:00 AM
 * 支付工具类
 */
@Component
public class Merchant extends DisplayObject {

	private String extra;
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}

}
