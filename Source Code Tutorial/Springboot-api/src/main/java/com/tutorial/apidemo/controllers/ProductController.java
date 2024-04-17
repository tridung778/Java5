package com.tutorial.apidemo.controllers;

import com.tutorial.apidemo.models.ResponseObject;
import org.springframework.beans.factory.annotation.Autowired;
import com.tutorial.apidemo.Repositories.ProductRepository;
import com.tutorial.apidemo.models.Product;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(path = "/api/v1/Products")
public class ProductController {

    @Autowired
    private ProductRepository repository;


    @GetMapping("")
    List<Product> getAllProducts() {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    ResponseEntity<ResponseObject> getProductById(@PathVariable("id") Long id) {

        Optional<Product> foundProduct = repository.findById(id);
        return foundProduct.isPresent() ?
                ResponseEntity.status(HttpStatus.OK).body(
                        new ResponseObject("ok", "Query product successfully", foundProduct)
                ) :
                ResponseEntity.status(HttpStatus.NOT_FOUND).body(
                        new ResponseObject("failed", "Can not find product with id = " + id, foundProduct)
                );

    }

    @PostMapping("/insert")
    ResponseEntity<ResponseObject> insertProduct(@RequestBody Product newProduct) {

        List<Product> foundProducts = repository.findProductByProductName(newProduct.getProductName().trim());
        if (!foundProducts.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_IMPLEMENTED).body(
                    new ResponseObject("failed", "Product with name = " + newProduct.getProductName().trim() + " already exists", "")
            );
        } else {
            return ResponseEntity.status(HttpStatus.OK).body(
                    new ResponseObject("ok", "Insert product successfully", repository.save(newProduct))
            );
        }

    }

    @PutMapping("/{id}")
    ResponseEntity<ResponseObject> updateProduct(@RequestBody Product newProduct, @PathVariable Long id) {
        Product updatedProduct = repository.findById(id).map(product -> {
            product.setProductName(newProduct.getProductName());
            product.setPrice(newProduct.getPrice());
            product.setProduct_year(newProduct.getProduct_year());
            product.setUrl(newProduct.getUrl());
            return repository.save(product);
        }).orElseGet(() -> {
            newProduct.setId(id);
            return repository.save(newProduct);
        });
        return ResponseEntity.status(HttpStatus.OK).body(
                new ResponseObject("ok", "Update Product successfully", updatedProduct)
        );
    }

    @DeleteMapping("/{id}")
    ResponseEntity<ResponseObject> deleteProduct(@PathVariable Long id) {
        boolean exists = repository.existsById(id);
        if (!exists) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(
                    new ResponseObject("failed", "Can not find product with id = " + id, "")
            );
        }else{
            repository.deleteById(id);
            return ResponseEntity.status(HttpStatus.OK).body(
                    new ResponseObject("ok", "Delete product successfully", "")
            );
        }
    }

}
