package com.lab5.lab5.DAO;

import com.lab5.lab5.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountDAO  extends JpaRepository<Account, String> {
}
