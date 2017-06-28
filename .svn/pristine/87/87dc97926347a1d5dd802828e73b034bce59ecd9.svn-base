package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.TradeState;


/**
 * Filename:TradeStateDaoImpl.java
 * Description: 
 * @author litong
 * @date 2017年3月13日 上午10:48:27
 */
@Repository
public class TradeStateDaoImpl implements TradeStateDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<TradeState> findAll(String proflag) {
		return sqlSessionTemplate.selectList("tradeStateFindAll",proflag);
	}

	@Override
	public List<TradeState> search(Map<String, String> key) {
		
		return sqlSessionTemplate.selectList("tradeStateSearch",key);
	}
	
	
}
