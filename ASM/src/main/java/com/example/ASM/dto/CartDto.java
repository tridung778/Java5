package com.example.ASM.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
    private int quantity;

    public CartDto( String thumbnail, String name, String type, String specie, double price, int quantity) {
        this.thumbnail = thumbnail;
        this.name = name;
        this.type = type;
        this.specie = specie;
        this.price = price;
        this.quantity = quantity;
    }
}
