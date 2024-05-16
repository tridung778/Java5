package com.example.ASM.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Product {
    @Id
    @GeneratedValue(strategy= GenerationType.UUID)
    private UUID id;
    private String description;
    private double price;
    private int quantity;
    private String name;
    private String type;
    private String thumbnail;

    public Product(String description, double price, int quantity, String name, String type, String thumbnail) {
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.name = name;
        this.type = type;
        this.thumbnail = thumbnail;
    }
}