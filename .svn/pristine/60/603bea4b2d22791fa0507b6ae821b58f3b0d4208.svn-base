package com.unicompay.jf.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.City;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository("cityDao")
public class CityDaoImpl implements CityDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<City> findAll(String provNameStr) {
		String[] strs = provNameStr.split(",");
		List<String> provName = new ArrayList<String>();
		for(int i = 0 ; i<strs.length ; i++){
			provName.add(strs[i]);
		}
		return sqlSessionTemplate.selectList("cityFindAll",provName);
	}

	@Override
	public List<City> search(Map<String,String> keys) {
		String cityName = keys.get("cityName");
		String provNameStr = keys.get("provName");
		String[] strs = provNameStr.split(",");
		List<String> provName = new ArrayList<String>();
		for(int i = 0 ; i<strs.length ; i++){
			provName.add(strs[i]);
		}
		Map<String,Object> key = new HashMap<String,Object>();
		key.put("provName", provName);
		key.put("cityName", cityName);
		return sqlSessionTemplate.selectList("citySearch", key);
	}
	
	
}
