package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long>{

}
