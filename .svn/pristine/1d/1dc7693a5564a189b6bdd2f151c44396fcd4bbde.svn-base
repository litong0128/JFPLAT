package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.UserSourceDao;
import com.unicompay.jf.model.UserSource;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:41:36 PM
 * 
 */
@Service
public class UserSourceServiceImpl implements UserSourceService {

	@Autowired
	private UserSourceDao userSourceDao;
	
	@Override
	public List<UserSource> getAll() {
		System.out.println("userSource service!");
		return userSourceDao.findAll();
	}

	@Override
	public List<UserSource> search(String key) {
		return userSourceDao.search(key);
	}

}
