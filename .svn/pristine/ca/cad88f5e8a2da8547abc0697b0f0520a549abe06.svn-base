package com.unicompay.jf.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.RechargeType;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
@Repository
public class RechargeTypeDaoImpl implements RechargeTypeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<RechargeType> findAll() {
		return sqlSessionTemplate.selectList("rechargeTypeFindAll");
	}

	@Override
	public List<RechargeType> search(String key) {
		return sqlSessionTemplate.selectList("rechargeTypeSearch", key);
	}

}
