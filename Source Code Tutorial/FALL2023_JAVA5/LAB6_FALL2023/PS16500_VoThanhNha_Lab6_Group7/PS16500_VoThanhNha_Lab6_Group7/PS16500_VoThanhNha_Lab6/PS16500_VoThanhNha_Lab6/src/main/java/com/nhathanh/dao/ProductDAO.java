package com.nhathanh.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhathanh.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
//
	@Query(value = "SELECT * FROM Products WHERE Price BETWEEN ?1 AND ?2", nativeQuery = true)
	List<Product> findByPriceBetweens(double minPrice, double maxPrice);

	@Query("SELECT o FROM Products o WHERE o.name LIKE ?1 or o.price LIKE ?1 or o.id LIKE ?1 or o.category.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	//Bài 4
	//List<Product> findByPriceBetween(double minPrice, double maxPrice);
	//Bài 5
	//Page<Product> findAllByNameLike(String keywords, Pageable pageable);


}
