package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.FinaChannel;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:11:45 PM
 * 
 */
@Repository
public class FinaChannelDaoImpl implements FinaChannelDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FinaChannel> findAll(String proflag) {
		return sqlSessionTemplate.selectList("finaFindAll",proflag);
	}

	@Override
	public List<FinaChannel> search(Map <String,String> key) {
		return sqlSessionTemplate.selectList("finaSearch", key);
	}

}
