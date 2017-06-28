package com.unicompay.jf.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.Merchant;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:14:21 PM
 * 
 */
@Repository
public class MerchantDaoImpl implements MerchantDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Merchant> findAll(String proflag) {
		return sqlSessionTemplate.selectList("merchantFindAll");
	}

	@Override
	public List<Merchant> search(String key) {
		return sqlSessionTemplate.selectList("merchantSearch", key);
	}

}
