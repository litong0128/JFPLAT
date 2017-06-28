package com.unicompay.jf.dao;

import java.util.List;

import com.unicompay.jf.model.AccountType;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
public interface AccountTypeDao {

	public List<AccountType> findAll();
	public List<AccountType> search(String key);
}
