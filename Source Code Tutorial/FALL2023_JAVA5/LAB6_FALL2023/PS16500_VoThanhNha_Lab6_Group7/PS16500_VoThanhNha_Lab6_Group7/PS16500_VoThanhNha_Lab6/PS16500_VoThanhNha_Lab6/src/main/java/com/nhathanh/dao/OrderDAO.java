package com.nhathanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhathanh.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long>{
}
