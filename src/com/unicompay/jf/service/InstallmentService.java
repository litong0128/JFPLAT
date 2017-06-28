package com.unicompay.jf.service;

import java.util.List;


import com.unicompay.jf.model.Installment;


/**
 * @author litong
 *
 */
public interface InstallmentService {
	
	public List<Installment> getAll();
	public List<Installment> search(String key);

}
