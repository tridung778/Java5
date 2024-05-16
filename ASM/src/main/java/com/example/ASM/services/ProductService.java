package com.example.ASM.services;

import com.example.ASM.models.Product;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public interface ProductService {
    Product add(Long id);

    Product update(Long id);

    void remove(Long id);

    void clear();

    Collection<Product> getItems();

    int getCount();

    double getAmount();
}
