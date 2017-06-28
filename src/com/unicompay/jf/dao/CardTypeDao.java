package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.CardType;


/**
 * Filename:CardDao.java
 * Description: 
 * @author litong
 * @date 2017年3月13日 上午10:45:50
 */
public interface CardTypeDao {

	public List<CardType> findAll(String proflag);
	public List<CardType> search(Map<String, String> key);
}
