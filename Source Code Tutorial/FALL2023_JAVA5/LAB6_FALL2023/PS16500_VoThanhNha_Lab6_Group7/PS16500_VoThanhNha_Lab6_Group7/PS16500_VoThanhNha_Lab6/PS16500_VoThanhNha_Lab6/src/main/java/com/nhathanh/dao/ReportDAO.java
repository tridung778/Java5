package com.nhathanh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhathanh.entity.Product;
import com.nhathanh.entity.Report;

public interface ReportDAO extends JpaRepository <Product,Integer>{
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Products o " 
+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategorys();

}
