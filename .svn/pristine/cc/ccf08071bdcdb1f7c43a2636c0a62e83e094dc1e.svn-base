package com.unicompay.jf.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.AccountType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class AccountTypeDaoImpl implements AccountTypeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<AccountType> findAll() {
		return sqlSessionTemplate.selectList("accountTypeFindAll");
	}

	@Override
	public List<AccountType> search(String key) {
		return sqlSessionTemplate.selectList("accountTypeSearch", key);
	}
	
	
}
