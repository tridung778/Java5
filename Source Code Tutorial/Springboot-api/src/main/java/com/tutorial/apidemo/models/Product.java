package com.tutorial.apidemo.models;

import jakarta.persistence.*;

import java.util.Calendar;
import java.util.Objects;


@Entity
@Table(name = "tblProduct")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false, unique = true, length = 300)
    private String productName;
    private int product_year;
    private double price;
    private String url;

    public Product() {
    }

    @Transient
    private int age;

    public int getAge() {
        return Calendar.getInstance().get(Calendar.YEAR) - product_year;
    }

    public Product(String productName, int product_year, double price, String url) {
        this.productName = productName;
        this.product_year = product_year;
        this.price = price;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", productName='" + productName + '\'' + ", product_year=" + product_year + ", price=" + price + ", url='" + url + '\'' + '}';
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getProduct_year() {
        return product_year;
    }

    public void setProduct_year(int product_year) {
        this.product_year = product_year;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return product_year == product.product_year && Double.compare(price, product.price) == 0 && age == product.age && Objects.equals(id, product.id) && Objects.equals(productName, product.productName) && Objects.equals(url, product.url);
    }

}
