package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.PayToolDao;
import com.unicompay.jf.model.PayTool;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:21:26 PM
 * 
 */
@Service
public class PayToolServiceImpl implements PayToolService {

	@Autowired
	private PayToolDao payToolDao;
	
	@Override
	public List<PayTool> getAll(String proflag) {
		return payToolDao.findAll(proflag);
	}

	@Override
	public List<PayTool> search(Map<String, String>  key) {
		return payToolDao.search(key);
	}

}
