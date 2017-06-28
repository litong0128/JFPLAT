package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.FinaChannelDao;
import com.unicompay.jf.model.FinaChannel;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:19:21 PM
 * 
 */
@Service
public class FinaChannelServiceImpl implements FinaChannelService {

	@Autowired
	private FinaChannelDao finaChannelDao;
	
	@Override
	public List<FinaChannel> getAll(String proflag) {
		return finaChannelDao.findAll(proflag);
	}

	@Override
	public List<FinaChannel> search(Map <String,String> key) {
		return finaChannelDao.search(key);
	}

}
