package com.example.Googlelogin.models;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Github {
    private String username;
    private String name;
    private String avatarUrl;
}
