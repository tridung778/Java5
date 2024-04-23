package com.lab5.lab5.DAO;

import com.lab5.lab5.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryDAO extends JpaRepository<Category, String> {
}
