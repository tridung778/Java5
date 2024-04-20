package com.lab3.lab3.models;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {

//    @NotBlank(message = "{NotBlank.student.name")
    String name;

//    @NotBlank(message = "{NotBlank.student.email")
    String email;

//    @Min(value = 1, message = "{Min.student.marks}")
//    @Max(value = 10, message = "{Max.student.marks}")
//    @NotNull(message = "{NotBlank.student.marks}")
    Double marks;

//    @NotNull(message = "{NotBlank.student.gender}")
    Boolean gender;

//    @NotBlank(message = "{NotBlank.student.faculty}")
    String faculty;

//    @NotEmpty(message = "{NotEmpty.student.hobbies}")
    List<String> hobbies;

    String image;
}