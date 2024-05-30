package com.example.ASM.services;

import com.example.ASM.models.Pet;
import com.example.ASM.models.PetCategory;

import java.util.List;

public interface PetService {

    void savePet(Pet pet);

    PetCategory getPetCategoryByName(String s);

    List<Pet> findAllPet();

    List<Pet> findAllPetByCategory(String petCategory);
}
