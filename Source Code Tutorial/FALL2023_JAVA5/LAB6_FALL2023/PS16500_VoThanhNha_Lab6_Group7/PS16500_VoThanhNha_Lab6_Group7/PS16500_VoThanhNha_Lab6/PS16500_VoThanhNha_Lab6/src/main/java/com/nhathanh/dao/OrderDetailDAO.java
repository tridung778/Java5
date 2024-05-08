package com.nhathanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhathanh.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}