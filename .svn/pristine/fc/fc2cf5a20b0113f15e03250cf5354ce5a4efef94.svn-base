package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.BusiScenarioDao;
import com.unicompay.jf.model.BusiScenario;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 4:22:51 PM
 * 
 */
@Service
public class BusiScenarioServiceImpl implements BusiScenarioService {

	@Autowired
	private BusiScenarioDao busiScenarioDao;
	
	@Override
	public List<BusiScenario> getAll(String proflag) {
		return busiScenarioDao.findAll(proflag);
	}

	@Override
	public List<BusiScenario> search(Map<String, String> paramMap) {
		return busiScenarioDao.search(paramMap);
	}

}
