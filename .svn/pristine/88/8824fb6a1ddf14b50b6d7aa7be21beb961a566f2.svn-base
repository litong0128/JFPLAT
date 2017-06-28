package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.RechargeTypeDao;
import com.unicompay.jf.model.RechargeType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 4:22:51 PM
 * 
 */
@Service
public class RechargeTypeServiceImpl implements RechargeTypeService {

	@Autowired
	private RechargeTypeDao rechargeTypeDao;
	
	@Override
	public List<RechargeType> getAll() {
		return rechargeTypeDao.findAll();
	}

	@Override
	public List<RechargeType> search(String key) {
		return rechargeTypeDao.search(key);
	}

}
