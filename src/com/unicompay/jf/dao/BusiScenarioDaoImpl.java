package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.BusiScenario;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
@Repository
public class BusiScenarioDaoImpl implements BusiScenarioDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<BusiScenario> findAll(String proflag) {
		return sqlSessionTemplate.selectList("busiFindAll",proflag);
	}

	@Override
	public List<BusiScenario> search(Map<String, String> paramMap) {
		return sqlSessionTemplate.selectList("busiSearch", paramMap);
	}

}
