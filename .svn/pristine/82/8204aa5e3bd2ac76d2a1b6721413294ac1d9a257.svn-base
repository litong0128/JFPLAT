package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.Trade;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class TradeDaoImpl implements TradeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Trade> findAll(String proflag) {
		return sqlSessionTemplate.selectList("tradeFindAll",proflag);
	}

	@Override
	public List<Trade> search(Map<String, String> key) {
		
		return sqlSessionTemplate.selectList("tradeSearch",key);
	}
	
	
}
