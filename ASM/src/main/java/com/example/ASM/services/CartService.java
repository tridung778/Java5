package com.example.ASM.services;

import com.example.ASM.dto.CartDto;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface CartService {

    Optional<CartDto> findById(UUID id);

    CartDto save(CartDto cartDto);

    List<CartDto> findAll();

    void deleteById(UUID id);

}
