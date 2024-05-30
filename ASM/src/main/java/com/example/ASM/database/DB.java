package com.example.ASM.database;

import com.example.ASM.enums.Gender;
import com.example.ASM.enums.PetStatus;
import com.example.ASM.models.*;
import com.example.ASM.services.PetCategoryService;
import com.example.ASM.services.PetService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DB {

    private static final Logger logger = LoggerFactory.getLogger(DB.class);

    @Bean
    CommandLineRunner initDatabase(PetCategoryService petCategoryService, PetService petService) {
        return args -> {

            String[] petCategories = {"Dog", "Cat", "Chim", "Cá", "Thỏ", "Hamster", "Rùa", "Rắn", "Nhím", "Chinchilla"};
            String[] dogNames = {"Lucky", "Max", "Charlie", "Buddy", "Cooper", "Rocky", "Duke", "Bear", "Teddy", "Leo"};
            String[] catNames = {"Bella", "Lucy", "Lily", "Chloe", "Sophie", "Lola", "Daisy", "Molly", "Luna", "Penny"};
            String[] birdNames = {"Rio", "Coco", "Mango", "Kiwi", "Sunny", "Sky", "Blue", "Joey", "Charlie", "Ollie"};
            String[] fishNames = {"Nemo", "Dory", "Bubbles", "Goldie", "Finley", "Marlin", "Coral", "Gill", "Pearl", "Splash"};

            String[] foodCategories = {"Thức ăn khô", "Thức ăn ướt", "Bánh thưởng", "Sữa", "Vitamin", "Thực phẩm chức năng", "Pate", "Xúc xích", "Snack", "Cỏ khô"};
            String[] foodBrands = {"Royal Canin", "Pedigree", "Whiskas", "Me-O", "Purina", "Hill's", "Eukanuba", "Iams", "Science Diet", "Taste of the Wild"};

            String[] toyCategories = {"Bóng", "Xương gặm", "Chuột nhồi bông", "Cần câu mèo", "Thú nhồi bông", "Gối nhai", "Đĩa bay", "Đồ chơi thông minh", "Bàn cào móng", "Lồng & Chuồng"};

            // Pet Categories
            for (String category : petCategories) {
                PetCategory petCategory = new PetCategory();
                petCategory.setName(category);
                petCategoryService.savePetCategory(petCategory);
            }

            // Pets
            for (int i = 0; i < 10; i++) {
                Pet pet = new Pet();
                pet.setName(i < 5 ? dogNames[i] : catNames[i - 5]);
                pet.setBreed(i < 5 ? "Dog" + (i + 1) : "Cat" + (i - 4));
                pet.setAge(i + 1);
                pet.setGender(i % 2 == 0 ? Gender.MALE : Gender.FEMALE);
                pet.setDescription("Mô tả thú cưng " + (i + 1));
                pet.setPrice(500.0 + i * 50);
                pet.setImage("cat.jpg");
                pet.setCategory(petCategoryService.getPetCategoryByName(i < 5 ? "Dog" : "Cat"));
                pet.setStatus(PetStatus.AVAILABLE);
                petService.savePet(pet);
            }

        };
    }
}
