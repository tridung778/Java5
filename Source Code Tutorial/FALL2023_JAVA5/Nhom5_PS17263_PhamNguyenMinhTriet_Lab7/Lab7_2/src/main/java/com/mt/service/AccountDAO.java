package com.mt.service;

import com.mt.model.Account;

public interface AccountDAO {
	public Account getOne(String username);
}
