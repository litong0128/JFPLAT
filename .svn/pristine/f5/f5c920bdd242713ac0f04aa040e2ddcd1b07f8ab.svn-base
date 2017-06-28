package com.unicompay.jf.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.ProvinceDao;
import com.unicompay.jf.model.Province;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:41:36 PM
 * 
 */
@Service("provinceService")
public class ProvinceServiceImpl implements ProvinceService {

	@Resource(name="provinceDao")
	private ProvinceDao provinceDao;
	
	@Override
	public List<Province> getAll() {
		System.out.println("province service!");
		return provinceDao.findAll();
	}

	@Override
	public List<Province> search(String key) {
		return provinceDao.search(key);
	}

}
