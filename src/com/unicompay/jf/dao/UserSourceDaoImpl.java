package com.unicompay.jf.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.UserSource;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class UserSourceDaoImpl implements UserSourceDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<UserSource> findAll() {
		return sqlSessionTemplate.selectList("userSourceFindAll");
	}

	@Override
	public List<UserSource> search(String key) {
		return sqlSessionTemplate.selectList("userSourceSearch", key);
	}
	
	
}
