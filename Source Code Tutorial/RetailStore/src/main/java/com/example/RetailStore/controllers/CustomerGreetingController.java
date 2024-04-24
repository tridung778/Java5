package com.example.RetailStore.controllers;

import com.example.RetailStore.models.Greeting;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

@RestController
@RequestMapping("/api/v1")
public class CustomerGreetingController {

    private static final String contentTemplate = "Hello, %s %s";

    private final AtomicLong counter = new AtomicLong();

    @GetMapping("/greeting")
    public Greeting greeting(@RequestParam(value = "gender", defaultValue = "0") boolean gender, @RequestParam(value = "customerName") String customerName) {
        return Greeting.builder()
                .id(counter.incrementAndGet())
                .content(String.format(contentTemplate, gender ? "Mr." : "Mrs.", customerName))
                .build();
    }
}
