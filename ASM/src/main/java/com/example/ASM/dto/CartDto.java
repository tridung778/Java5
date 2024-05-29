package com.example.ASM.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class CartDto {
    @Id
    private UUID id;
    private int stt;
    private String thumbnail;
    private String name;
    private String type;
    private String specie;
    private double price;
    @Max(100)
    @Min(0)
    private int quantity;
    private String code;

    public CartDto(String code, String thumbnail, String name, String type, String specie, double price, int quantity) {
        this.thumbnail = thumbnail;
        this.name = name;
        this.type = type;
        this.specie = specie;
        this.price = price;
        this.quantity = quantity;
        this.code = code;
    }
}
