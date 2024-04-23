package com.lab5.lab5.DAO;

import com.lab5.lab5.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDAO  extends JpaRepository<Order, Long> {
}
