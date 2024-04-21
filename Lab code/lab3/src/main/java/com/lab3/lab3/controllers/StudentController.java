package com.lab3.lab3.controllers;

import com.lab3.lab3.models.Student;
import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {

    public final static String path = "C:\\Java 5\\Lab code\\lab3\\src\\main\\resources\\static\\images\\";

    @RequestMapping("")
    public String form(@ModelAttribute("student") Student student, Model model) {
//        student.setName("dung");
//        student.setEmail("dung@gmail.com");
//        student.setMarks(10.0);
//        student.setGender(true);
//        student.setFaculty("QLKS");
        model.addAttribute("student", student);
        return "student-form";
    }

    @PostMapping("/save")
    public String save(@Validated @ModelAttribute("student") Student student, BindingResult bindingResult, @RequestParam("photo-file") MultipartFile photoFile, Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            List<FieldError> errors = bindingResult.getFieldErrors();
            for (FieldError error : errors) {
                String errorMessage = error.getDefaultMessage();
                model.addAttribute("errorMessage", errorMessage);
            }
            return "student-form";
        }else if (!photoFile.isEmpty()) {
            String fileName = photoFile.getOriginalFilename();
            File file = new File(path + fileName);
            if (!file.exists()) {
                file.mkdirs();
            }
            photoFile.transferTo(file);
            student.setImage(fileName);
            model.addAttribute("student", student);
            model.addAttribute("message", "Chuc mung ban da nhap dung");
        }

        return "student-result";
    }


    @ModelAttribute("genders")
    public Map<Boolean, String> getGenders() {
        Map<Boolean, String> map = new HashMap<>();
        map.put(true, "Male");
        map.put(false, "Female");
        return map;
    }

    @ModelAttribute("faculties")
    public List<String> getFaculties(Model model) {
        return Arrays.asList("CNTT", "QLKS", "KMT");
    }

    @ModelAttribute("hobbies")
    public Map<String, String> getHobbies() {
        Map<String, String> map = new HashMap<>();
        map.put("T", "Travelling");
        map.put("M", "Music");
        map.put("F", "Food");
        map.put("O", "Other");
        return map;
    }
}
