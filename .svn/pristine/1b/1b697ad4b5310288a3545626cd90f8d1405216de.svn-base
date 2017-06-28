package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.MerchantDao;
import com.unicompay.jf.model.Merchant;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:21:26 PM
 * 
 */
@Service
public class MerchantServiceImpl implements MerchantService {

	@Autowired
	private MerchantDao merchantDao;
	
	@Override
	public List<Merchant> getAll(String proflag) {
		return merchantDao.findAll(proflag);
	}

	@Override
	public List<Merchant> search(String key) {
		return merchantDao.search(key);
	}

}
