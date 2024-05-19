package com.example.ASM.reponsitorys;

import com.example.ASM.dto.CartDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface CartRepository extends JpaRepository<CartDto, UUID> {
}
