package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.PayTool;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:14:21 PM
 * 
 */
@Repository
public class PayToolDaoImpl implements PayToolDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<PayTool> findAll(String proflag) {
		return sqlSessionTemplate.selectList("payFindAll",proflag);
	}

	@Override
	public List<PayTool> search(Map<String, String>  key) {
		return sqlSessionTemplate.selectList("paySearch", key);
	}

}
