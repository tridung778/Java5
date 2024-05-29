package com.example.ASM.services;

import com.example.ASM.models.Product;
import com.example.ASM.reponsitorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> findByTypeContainingIgnoreCase(String type) {
        return productRepository.findByTypeContainingIgnoreCase(type);
    }

    @Override
    public Optional<Product> findById(UUID id) {
        return productRepository.findById(id);
    }

    @Override
    public Product save(Product product) {
       return productRepository.save(product);
    }
}
