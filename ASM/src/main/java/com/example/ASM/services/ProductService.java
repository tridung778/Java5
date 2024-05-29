package com.example.ASM.services;

import com.example.ASM.models.Product;

import java.util.List;
import java.util.Optional;
import java.util.UUID;


public interface ProductService {

    List<Product> findAll();

    List<Product> findByTypeContainingIgnoreCase(String type);

    Optional<Product> findById(UUID id);

    Product save(Product product);

}
