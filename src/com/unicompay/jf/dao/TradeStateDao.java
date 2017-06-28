package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.TradeState;


/**
 * Filename:TradeStateDao.java
 * Description: 
 * @author litong
 * @date 2017年3月13日 上午10:45:50
 */
public interface TradeStateDao {

	public List<TradeState> findAll(String proflag);
	public List<TradeState> search(Map<String, String> key);
}
