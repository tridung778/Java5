package com.example.lab3.controllers;

import com.example.lab3.models.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
public class Lab3Controller {

    public final static String path = "C:\\Java 5\\Lab Renew\\lab3\\src\\main\\resources\\static\\image\\";

    List<Student> list = new ArrayList<Student>();

    @RequestMapping("")
    public String form(@ModelAttribute("student") Student student, Model model) {
//        student.setName("dung");
//        student.setEmail("dung@gmail.com");
//        student.setMarks(10.0);
//        student.setGender(true);
//        student.setFaculty("QLKS");
//        list.add(student);
        model.addAttribute("student",student);
        return "form";
    }

    @PostMapping("/save")
    public String save(@Validated @ModelAttribute("student") Student student, BindingResult bindingResult, @RequestParam("photo-file") MultipartFile photoFile, Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            List<FieldError> errors = bindingResult.getFieldErrors();
            for (FieldError error : errors) {
                String errorMessage = error.getDefaultMessage();
                model.addAttribute("errorMessage", errorMessage);
            }
            return "form";
        }else if (!photoFile.isEmpty()) {
            String fileName = photoFile.getOriginalFilename();
            File file = new File(path + fileName);
            if (!file.exists()) {
                file.mkdirs();
            }
            photoFile.transferTo(file);
            student.setImage(fileName);
            list.add(student);
            model.addAttribute("students", list);
            model.addAttribute("message", "Chuc mung ban da nhap dung");
        }

        return "form";
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
        map.put("Travelling", "Travelling");
        map.put("Music", "Music");
        map.put("Food", "Food");
        map.put("Other", "Other");
        return map;
    }
}