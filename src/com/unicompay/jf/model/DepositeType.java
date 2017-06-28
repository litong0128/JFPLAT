package com.unicompay.jf.model;

import org.springframework.stereotype.Component;


/**
 * @author litong
 * 缴存类
 */
@Component
public class DepositeType extends DisplayObject{

	private String extra;
	
	public String getExtra() {
		return extra;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}

}
