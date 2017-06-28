package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.unicompay.jf.model.Channel;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:34:46 PM
 * 
 */
@Repository
public class ChannelDaoImpl implements ChannelDao {

	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Channel> findAll(String proflag) {
		return sqlSessionTemplate.selectList("channelFindAll",proflag);
	}

	@Override
	public List<Channel> search(Map<String, String> key) {
		
		return sqlSessionTemplate.selectList("channelSearch",key);
	}
	
	
}
