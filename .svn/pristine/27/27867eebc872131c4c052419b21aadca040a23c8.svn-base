package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.CityDao;
import com.unicompay.jf.model.City;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:41:36 PM
 * 
 */
@Service("cityService")
public class CityServiceImpl implements CityService {

	@Resource(name="cityDao")
	private CityDao cityDao;
	
	@Override
	public List<City> getAll(String provName) {
		System.out.println("city service!");
		return cityDao.findAll(provName);
	}

	@Override
	public List<City> search(Map<String,String> key) {
		return cityDao.search(key);
	}

}
