package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.TradeStateDao;
import com.unicompay.jf.model.TradeState;


/**
 * @author litong
 *
 */
@Service
public class TradeStateServiceImpl implements TradeStateService {

	@Autowired
	private TradeStateDao tradeStateDao;
	
	@Override
	public List<TradeState> getAll(String proflag) {
		return tradeStateDao.findAll(proflag);
	}

	@Override
	public List<TradeState> search(Map<String, String> key) {
		return tradeStateDao.search(key);
	}

}
