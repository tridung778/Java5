package com.example.ASM.database;

import com.example.ASM.models.Product;
import com.example.ASM.reponsitorys.ProductRepository;
import com.example.ASM.services.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DB {

    private static final Logger logger = LoggerFactory.getLogger(DB.class);

    @Bean
    CommandLineRunner initDatabase(ProductService productService) {
        return new CommandLineRunner() {
            @Override
            public void run(String... args) throws Exception {
                for (int i = 0; i < 12; i++) {
                    Product product1 = new Product("Mèo anh cực đẹp", 155000, 1, "Munchkin Chân Lùn Bicolor", "cat","cat.jpg","Mèo anh chân ngắn","ALN54568" );
                    Product product2 = new Product("Chó Husky cực ngáo", 455000, 1, "Chó Husky", "dog","dog.jpg","Chó Husky","HK6969" );
                    logger.info("insert data: " + productService.save(product1));
                    logger.info("insert data: " + productService.save(product2));
                }
            }
        };
    }

}
