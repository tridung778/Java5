package com.lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lab5.model.Products;

public interface ProductDAO extends JpaRepository<Products, Integer>{

}
