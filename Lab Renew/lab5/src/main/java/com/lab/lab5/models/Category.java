package com.lab.lab5.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "Categories")
public class Category  implements Serializable {
    @Id
    String id;
    String name;
    @OneToMany(mappedBy = "category", cascade = CascadeType.REMOVE)
    @ToString.Exclude
    List<Product> products;

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
