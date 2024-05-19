package com.example.ASM.databases;

import com.example.ASM.models.Cat;
import com.example.ASM.reponsitorys.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DB {

    private static final Logger logger = LoggerFactory.getLogger(DB.class);

    @Bean
    CommandLineRunner initDatabase(ProductRepository ProductRepository) {
        return new CommandLineRunner() {
            @Override
            public void run(String... args) throws Exception {
                Cat cat1 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat2 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat3 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat4 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat5 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat6 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat7 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat8 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat9 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat10 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat11 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                Cat cat12 = new Cat("Meo anh cuc dep", 155000, 1, "Munchkin Chân Lùn Bicolor ALN54568", "Mèo","123.jpeg","Mèo anh chân ngắn");
                logger.info("insert data: " + ProductRepository.save(cat1));
                logger.info("insert data: " + ProductRepository.save(cat2));
                logger.info("insert data: " + ProductRepository.save(cat3));
                logger.info("insert data: " + ProductRepository.save(cat4));
                logger.info("insert data: " + ProductRepository.save(cat5));
                logger.info("insert data: " + ProductRepository.save(cat6));
                logger.info("insert data: " + ProductRepository.save(cat7));
                logger.info("insert data: " + ProductRepository.save(cat8));
                logger.info("insert data: " + ProductRepository.save(cat9));
                logger.info("insert data: " + ProductRepository.save(cat10));
                logger.info("insert data: " + ProductRepository.save(cat11));
                logger.info("insert data: " + ProductRepository.save(cat12));
            }
        };
    }

}
