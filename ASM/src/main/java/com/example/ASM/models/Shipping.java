package com.example.ASM.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Shipping")
@Data
public class Shipping {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private double price;
}
