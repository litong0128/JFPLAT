package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.DepositeType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class DepositeTypeDaoImpl implements DepositeTypeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<DepositeType> findAll(String proflag) {
		return sqlSessionTemplate.selectList("depositeTypeFindAll",proflag);
	}

	@Override
	public List<DepositeType> search(Map<String, String> key) {
		return sqlSessionTemplate.selectList("depositeTypeSearch",key);
	}
	
	
}
