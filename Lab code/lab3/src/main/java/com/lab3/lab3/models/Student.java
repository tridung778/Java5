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

    @NotBlank(message = "Vui lòng nhập tên")
    String name;

    @NotBlank(message = "Vui lòng nhập email")
    String email;

    @Min(value = 0, message = "Điểm thấp nhất là 0")
    @Max(value = 10, message = "Điểm cao nhất là 10")
    @NotNull(message = "Điểm không được bỏ trống")
    Double marks;

    @NotNull(message = "Giới tính không được bỏ trống")
    Boolean gender;

    @NotBlank(message = "Chuyên ngành không được bỏ trống")
    String faculty;

    @NotEmpty(message = "Sở thích không được bỏ trống")
    List<String> hobbies;

    String image;
}