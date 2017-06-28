package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.TradeDao;
import com.unicompay.jf.model.Trade;


/**
 * @author litong
 *
 */
@Service
public class TradeServiceImpl implements TradeService {

	@Autowired
	private TradeDao tradeDao;
	
	@Override
	public List<Trade> getAll(String proflag) {
		return tradeDao.findAll(proflag);
	}

	@Override
	public List<Trade> search(Map<String, String> key) {
		return tradeDao.search(key);
	}

}
