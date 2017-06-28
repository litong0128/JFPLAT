package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.LevelOrg;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:14:21 PM
 * 
 */
@Repository
public class LevelOrgDaoImpl implements LevelOrgDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<LevelOrg> findAll(Map<String, String>  key) {
		return sqlSessionTemplate.selectList("levelOrgFindAll",key);
	}

	@Override
	public List<LevelOrg> search(Map<String, String>  key) {
		return sqlSessionTemplate.selectList("levelOrgSearch", key);
	}

}
