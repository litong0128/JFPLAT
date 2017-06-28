package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.Channel;


/**
 * @author litong
 *
 */
public interface ChannelService {
	
	public List<Channel> getAll(String proflag);
	public List<Channel> search(Map<String, String> key);

}
