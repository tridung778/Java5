package com.lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab5.model.OrderDetails;

public interface OrderDetailDAO extends JpaRepository<OrderDetails, Integer>{

}
