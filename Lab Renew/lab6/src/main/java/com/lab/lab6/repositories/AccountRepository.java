package com.lab.lab6.repositories;

import com.lab.lab6.models.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, String>{
}
