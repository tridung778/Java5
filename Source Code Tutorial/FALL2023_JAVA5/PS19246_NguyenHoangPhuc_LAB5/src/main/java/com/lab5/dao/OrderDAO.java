package com.lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab5.model.Orders;

public interface OrderDAO extends JpaRepository<Orders, Integer>{

}
