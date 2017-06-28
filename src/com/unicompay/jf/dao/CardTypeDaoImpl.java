package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.CardType;


/**
 * Filename:CardTypeDaoImpl.java
 * Description: 
 * @author litong
 * @date 2017年3月13日 上午10:48:27
 */
@Repository
public class CardTypeDaoImpl implements CardTypeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<CardType> findAll(String proflag) {
		return sqlSessionTemplate.selectList("cardTypeFindAll",proflag);
	}

	@Override
	public List<CardType> search(Map<String, String> key) {
		
		return sqlSessionTemplate.selectList("cardTypeSearch",key);
	}
	
	
}
