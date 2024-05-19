package com.example.ASM.reponsitorys;

import com.example.ASM.models.Cat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ProductRepository extends JpaRepository<Cat, UUID>{
    Cat findByNameContainingIgnoreCase(String name);
}