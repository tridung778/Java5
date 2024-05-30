package com.lab.lab5.repositories;

import com.lab.lab5.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    Product searchProductByCategoryId(String id);
}
