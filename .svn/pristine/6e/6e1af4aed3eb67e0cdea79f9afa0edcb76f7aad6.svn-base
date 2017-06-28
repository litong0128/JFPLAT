package com.unicompay.jf.dao;

import java.util.List;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.Province;


/**
 * Filename:ProvinceDaoNImpl.java
 * Description: 使用新的省份维度表
 * @author litong
 * @date 2016年5月6日 下午3:34:51
 */

@Repository("provinceDaoN")

public class ProvinceDaoNImpl implements ProvinceDao {

	
	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Province> findAll() {
		return sqlSessionTemplate.selectList("provinceNFindAll");
	}

	@Override
	public List<Province> search(String key) {
		return sqlSessionTemplate.selectList("provinceNSearch", key);
	}
	
	
}
