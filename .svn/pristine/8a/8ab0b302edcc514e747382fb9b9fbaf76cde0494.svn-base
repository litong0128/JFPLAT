package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.CardTypeDao;
import com.unicompay.jf.model.CardType;


/**
 * @author litong
 *
 */
@Service
public class CardTypeServiceImpl implements CardTypeService {

	@Autowired
	private CardTypeDao cardTypeDao;
	
	@Override
	public List<CardType> getAll(String proflag) {
		return cardTypeDao.findAll(proflag);
	}

	@Override
	public List<CardType> search(Map<String, String> key) {
		return cardTypeDao.search(key);
	}

}
