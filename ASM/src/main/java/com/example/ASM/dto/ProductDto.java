package com.example.ASM.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

@Data
public class ProductDto {
    private UUID id;
    private String name;
    private double price;
    private int quantity;
    private String type;
    private String description;
    private MultipartFile thumbnail;
}