package com.lab.lab6.repositories;

import com.lab.lab6.models.Product;
import com.lab.lab6.models.Report;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {

    //Bài 1
//	@Query("select o from Product o where o.price between ?1 and ?2")
//	List<Product> findByPrice(double min, double max);

    //Bài 4
    List<Product> findByPriceBetween(double min, double max);


    //Bài 2
//	@Query("select o from Product o where o.name like ?1")
//	Page<Product> findByKeywords(String keywords, Pageable page);

    //Bài5
    Page<Product> findAllByNameLike(String keywords, Pageable page);

    @Query("select new Report(o.category.name, sum(o.price), count(o)) from Product o group by o.category.name order by sum(o.price) desc")
    List<Report> getInventoryByCategory();
}
