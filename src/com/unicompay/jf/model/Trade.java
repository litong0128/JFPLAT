package com.unicompay.jf.model;

import org.springframework.stereotype.Component;


/**
 * @author litong
 * 交易类
 */
@Component
public class Trade extends DisplayObject{

	private String extra;
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}

}
