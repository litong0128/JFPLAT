package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.Trade;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
public interface TradeDao {

	public List<Trade> findAll(String proflag);
	public List<Trade> search(Map<String, String> key);
}
