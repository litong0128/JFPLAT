package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.LevelOrgDao;
import com.unicompay.jf.model.LevelOrg;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:21:26 PM
 * 
 */
@Service
public class LevelOrgServiceImpl implements LevelOrgService {

	@Autowired
	private LevelOrgDao levelOrgDao;
	
	@Override
	public List<LevelOrg> getAll(Map<String, String> key) {
		return levelOrgDao.findAll(key);
	}

	@Override
	public List<LevelOrg> search(Map<String, String>  key) {
		return levelOrgDao.search(key);
	}

}
