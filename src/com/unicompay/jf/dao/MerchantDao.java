package com.unicompay.jf.dao;

import java.util.List;

import com.unicompay.jf.model.Merchant;

/**
 * @author GuoYankui
 * @version Feb 5, 2015 6:09:17 PM
 * 
 */
public interface MerchantDao {
	
	public List<Merchant> findAll(String proflag);
	public List<Merchant> search(String key);

}
