package com.unicompay.jf.dao;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.BusiScenario;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 11:30:18 AM
 * 
 */
public interface BusiScenarioDao {
	
	public List<BusiScenario> findAll(String proflag);
	public List<BusiScenario> search(Map<String, String> paramMap);

}
