package com.example.ASM.databases;

import com.example.ASM.models.Product;
import com.example.ASM.reponsitorys.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


import java.util.UUID;

@Configuration
public class DB {

    private static final Logger logger = LoggerFactory.getLogger(DB.class);

    @Bean
    CommandLineRunner initDatabase(ProductRepository ProductRepository) {
        return new CommandLineRunner() {
            @Override
            public void run(String... args) throws Exception {
                Product productA = new Product("Ao dep", 155000, 13534, "Ao jean", "Ao","123.jpeg");
                Product productB = new Product("Quan dep", 455000, 23534, "Quan jean", "Quan","cat.jpg");
                logger.info("insert data: " + ProductRepository.save(productA));
                logger.info("insert data: " + ProductRepository.save(productB));
            }
        };
    }

}
