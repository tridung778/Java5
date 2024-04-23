package com.lab5.lab5.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "Categories")
public class Category  implements Serializable {
    @Id
    String id;
    String name;
    @OneToMany(mappedBy = "category")
    List<Product> products;
}
