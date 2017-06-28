package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.BankDao;
import com.unicompay.jf.model.Bank;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 2:41:36 PM
 * 
 */
@Service
public class BankServiceImpl implements BankService {

	@Autowired
	private BankDao bankDao;
	
	@Override
	public List<Bank> getAll() {
		System.out.println("bank service!");
		return bankDao.findAll();
	}

	@Override
	public List<Bank> search(String key) {
		return bankDao.search(key);
	}

}
