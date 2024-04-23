package com.lab5.lab5.DAO;

import com.lab5.lab5.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO extends JpaRepository<Product, Integer> {
}
