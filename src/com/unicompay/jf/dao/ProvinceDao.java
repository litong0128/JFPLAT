package com.unicompay.jf.dao;

import java.util.List;

import com.unicompay.jf.model.Province;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
public interface ProvinceDao {

	public List<Province> findAll();
	public List<Province> search(String key);
}
