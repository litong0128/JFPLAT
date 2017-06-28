package com.unicompay.jf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unicompay.jf.dao.InstallmentDao;
import com.unicompay.jf.model.Installment;


/**
 * @author litong
 *
 */
@Service
public class InstallmentServiceImpl implements InstallmentService {

	@Autowired
	private InstallmentDao installmentDao;
	
	@Override
	public List<Installment> getAll() {
		System.out.println("Installment service!");
		return installmentDao.findAll();
	}

	@Override
	public List<Installment> search(String key) {
		return installmentDao.search(key);
	}

}
