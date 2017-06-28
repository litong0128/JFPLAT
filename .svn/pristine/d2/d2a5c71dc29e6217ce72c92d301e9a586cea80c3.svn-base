package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.DepositeTypeDao;
import com.unicompay.jf.model.DepositeType;


/**
 * @author litong
 *
 */
@Service
public class DepositeTypeServiceImpl implements DepositeTypeService {

	@Autowired
	private DepositeTypeDao depositeTypeDao;
	
	@Override
	public List<DepositeType> getAll(String proflag) {
		return depositeTypeDao.findAll(proflag);
	}

	@Override
	public List<DepositeType> search(Map<String, String> key) {
		return depositeTypeDao.search(key);
	}

}
