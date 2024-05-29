package com.lab.lab5.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "Products")
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
    String image;
    Double price;
    @Temporal(TemporalType.DATE)
    @Column(name = "Createdate")
    Date createDate = new Date();
    Boolean available;
    @ManyToOne @JoinColumn(name = "Categoryid")
    Category category;
    @OneToMany(mappedBy = "product")
    @ToString.Exclude
    List<OrderDetail> orderDetails;
}