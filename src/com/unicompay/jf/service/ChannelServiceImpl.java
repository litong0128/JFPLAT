package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.ChannelDao;
import com.unicompay.jf.model.Channel;


/**
 * @author litong
 *
 */
@Service
public class ChannelServiceImpl implements ChannelService {

	@Autowired
	private ChannelDao ChannelDao;
	
	@Override
	public List<Channel> getAll(String proflag) {
		return ChannelDao.findAll(proflag);
	}

	@Override
	public List<Channel> search(Map<String, String> key) {
		return ChannelDao.search(key);
	}

}
