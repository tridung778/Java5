package com.example.ASM.services;

import com.example.ASM.models.Cat;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public interface ProductService {
    Cat add(Long id);

    Cat update(Long id);

    void remove(Long id);

    void clear();

    Collection<Cat> getItems();

    int getCount();

    double getAmount();
}
