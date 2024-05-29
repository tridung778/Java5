package com.lab.lab5.models;

import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;

@Data
@Entity
@Table(name = "Orderdetails")
public class OrderDetail implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Double price;
    Integer quantity;
    @ManyToOne
    @JoinColumn(name = "Productid")
    Product product;
    @ManyToOne
    @JoinColumn(name = "Orderid")
    Order order;
}