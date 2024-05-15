package com.example.ASM.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "Banner")
@Data
public class Banner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String image;
    private String href;
}
