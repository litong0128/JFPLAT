package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.BusiScenario;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 4:19:33 PM
 * 
 */
public interface BusiScenarioService {

	public List<BusiScenario> getAll(String proflag);
	public List<BusiScenario> search(Map<String, String> paramMap);
}
