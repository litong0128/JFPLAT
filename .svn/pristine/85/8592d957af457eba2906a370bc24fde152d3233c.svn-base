package com.unicompay.jf.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.Bank;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class BankDaoImpl implements BankDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Bank> findAll() {
		return sqlSessionTemplate.selectList("bankFindAll");
	}

	@Override
	public List<Bank> search(String key) {
		return sqlSessionTemplate.selectList("bankSearch", key);
	}
	
	
}
