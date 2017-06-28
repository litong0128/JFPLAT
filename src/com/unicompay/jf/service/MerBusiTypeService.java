package com.unicompay.jf.service;

import java.util.List;
import java.util.Map;

import com.unicompay.jf.model.MerBusiType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 4:19:33 PM
 * 
 */
public interface MerBusiTypeService {

	public List<MerBusiType> getAll(String proflag);
	public List<MerBusiType> search(Map<String, String> paramMap);
}
