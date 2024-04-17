package com.tutorial.apidemo.database;

import com.tutorial.apidemo.Repositories.ProductRepository;
import com.tutorial.apidemo.models.Product;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Database {

    private static final Logger logger = LoggerFactory.getLogger(Database.class);

    @Bean
    CommandLineRunner initDatabase(ProductRepository ProductRepository) {
        return new CommandLineRunner() {
            @Override
            public void run(String... args) throws Exception {
//                Product productA = new Product("DELL XPS", 2023, 6234.34, "");
//                Product productB = new Product("Macbook", 2024, 4324.234, "");
//                logger.info("insert data: " + ProductRepository.save(productA));
//                logger.info("insert data: " + ProductRepository.save(productB));
            }
        };
    }
}
