package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer>{

}
