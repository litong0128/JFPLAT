package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.DepositeType;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
public interface DepositeTypeDao {

	public List<DepositeType> findAll(String proflag);
	public List<DepositeType> search(Map<String, String> key);
}
