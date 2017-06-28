package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.MerBusiTypeDao;
import com.unicompay.jf.model.MerBusiType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 4:22:51 PM
 * 
 */
@Service
public class MerBusiTypeServiceImpl implements MerBusiTypeService {

	@Autowired
	private MerBusiTypeDao merBusiTypeDao;
	
	@Override
	public List<MerBusiType> getAll(String proflag) {
		return merBusiTypeDao.findAll(proflag);
	}

	@Override
	public List<MerBusiType> search(Map<String, String> paramMap) {
		return merBusiTypeDao.search(paramMap);
	}

}
