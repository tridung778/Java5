package com.example.ASM.repositories;

import com.example.ASM.models.Pet;
import com.example.ASM.models.PetCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface PetRepository extends JpaRepository<Pet, UUID> {
    PetCategory getPetCategoryByName(String s);

    List<Pet> getPetsByCategoryName(String name);

}
