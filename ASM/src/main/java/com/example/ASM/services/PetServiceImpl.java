package com.example.ASM.services;

import com.example.ASM.models.Pet;
import com.example.ASM.models.PetCategory;
import com.example.ASM.repositories.PetRepository;
import jdk.jfr.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetServiceImpl implements PetService {

    @Autowired
    PetRepository petRepository;

    @Override
    public void savePet(Pet pet) {
        petRepository.save(pet);
    }

    @Override
    public PetCategory getPetCategoryByName(String s) {
        return petRepository.getPetCategoryByName(s);
    }
    @Override
    public List<Pet> findAllPet() {
        return petRepository.findAll();
    }

    @Override
    public List<Pet> findAllPetByCategory(String category) {
         return petRepository.getPetsByCategoryName(category);
    }
}
