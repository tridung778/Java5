package com.lab.lab6.models;

import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;

@Data
@Entity
@Table(name = "OrderDetails")
public class OrderDetail implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double price;
    private Integer quantity;
    @ManyToOne
    @JoinColumn(name = "ProductId")
    private Product product;
    @ManyToOne @JoinColumn(name = "OrderId")
    private Order order;
}
