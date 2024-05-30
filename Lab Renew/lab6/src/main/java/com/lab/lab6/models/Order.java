package com.lab.lab6.models;

import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "Orders")
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String address;
    @Temporal(TemporalType.DATE)
    @Column(name = "CreateDate")
    private Date createDate = new Date();
    @ManyToOne @JoinColumn(name = "Username")
    private Account account;
    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;
}
