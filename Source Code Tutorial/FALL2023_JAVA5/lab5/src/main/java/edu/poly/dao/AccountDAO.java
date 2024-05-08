package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{

}
