package com.unicompay.jf.service;

import java.util.List;

import com.unicompay.jf.model.AccountType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:39:28 PM
 * 
 */
public interface AccountTypeService {
	
	public List<AccountType> getAll();
	public List<AccountType> search(String key);

}
