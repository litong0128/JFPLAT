package com.unicompay.jf.model;

import org.springframework.stereotype.Component;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 10:43:46 AM
 * 
 * 业务类型
 */
@Component
public class MerBusiType extends DisplayObject {

	private String extra;
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}

}
