package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.AccountTypeDao;
import com.unicompay.jf.model.AccountType;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:41:36 PM
 * 
 */
@Service
public class AccountTypeServiceImpl implements AccountTypeService {

	@Autowired
	private AccountTypeDao accountTypeDao;
	
	@Override
	public List<AccountType> getAll() {
		System.out.println("AccountType service!");
		return accountTypeDao.findAll();
	}

	@Override
	public List<AccountType> search(String key) {
		return accountTypeDao.search(key);
	}

}
