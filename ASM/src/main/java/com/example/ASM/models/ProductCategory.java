package com.example.ASM.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Product_Category")
@Data
public class ProductCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String categoryName;
}
