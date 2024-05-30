package com.example.ASM.services;

import com.example.ASM.models.PetCategory;

public interface PetCategoryService {
    void savePetCategory(PetCategory petCategory);

    PetCategory getPetCategoryByName(String s);
}
