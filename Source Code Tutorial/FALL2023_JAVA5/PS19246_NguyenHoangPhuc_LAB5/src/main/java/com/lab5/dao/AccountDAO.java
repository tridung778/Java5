package com.lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab5.model.Accounts;

public interface AccountDAO extends JpaRepository<Accounts, String>{

}
