package com.unicompay.jf.dao;

import java.util.List;

import com.unicompay.jf.model.RechargeType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 11:30:18 AM
 * 
 */
public interface RechargeTypeDao {
	
	public List<RechargeType> findAll();
	public List<RechargeType> search(String key);

}
