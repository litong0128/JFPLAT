package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.MerBusiType;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
@Repository
public class MerBusiTypeDaoImpl implements MerBusiTypeDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<MerBusiType> findAll(String proflag) {
		return sqlSessionTemplate.selectList("merbusiFindAll",proflag);
	}

	@Override
	public List<MerBusiType> search(Map<String, String> paramMap) {
		return sqlSessionTemplate.selectList("merbusiSearch", paramMap);
	}

}
