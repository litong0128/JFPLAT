package com.unicompay.jf.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.ProvinceDao;
import com.unicompay.jf.model.Province;


/**
 * Filename:ProvinceServiceNImpl.java
 * Description: 
 * @author litong
 * @date 2016年5月6日 下午3:34:38
 */
@Service("provinceServiceN")
public class ProvinceServiceNImpl implements ProvinceService {

	
	@Resource(name="provinceDaoN")
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
