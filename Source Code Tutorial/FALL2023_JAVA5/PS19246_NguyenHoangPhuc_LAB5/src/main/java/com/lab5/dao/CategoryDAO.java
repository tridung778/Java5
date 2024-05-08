package com.lab5.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.lab5.model.Categories;

public interface CategoryDAO extends JpaRepository<Categories, String>{

}
