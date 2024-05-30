package com.lab.lab6.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable {
    @Id
    @Length(min = 4, max = 4)
    private String id;
    @NotBlank
    private String name;
    @OneToMany(mappedBy = "category")
    private List<Product> products;
}
