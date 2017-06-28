package com.unicompay.jf.dao;

import java.util.List;

import com.unicompay.jf.model.Installment;


/**
 * @author GuoYankui
 * @version Feb 5, 2015 1:32:06 PM
 * 
 */
public interface InstallmentDao {

	public List<Installment> findAll();
	public List<Installment> search(String key);
}
