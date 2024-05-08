package com.nhathanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhathanh.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
