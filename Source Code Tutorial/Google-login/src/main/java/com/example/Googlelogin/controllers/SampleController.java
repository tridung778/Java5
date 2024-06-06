package com.example.Googlelogin.controllers;

import com.example.Googlelogin.models.Github;
import com.example.Googlelogin.models.Google;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class SampleController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/secured/github")
    @ResponseBody
    public Github securedGithub(Authentication authentication) {
        Github github = new Github();
        if (authentication != null && authentication.getPrincipal() instanceof DefaultOAuth2User oauth2User) {
            Map<String, Object> attributes = oauth2User.getAttributes();
            github.setUsername((String) attributes.get("login"));
            github.setName(((String) attributes.get("name")));
            github.setAvatarUrl((String) attributes.get("avatar_url"));
        }
        return github;
    }

    @GetMapping("/secured/google")
    @ResponseBody
    public Google securedGoogle(Authentication authentication) {
        Google google = new Google();
        if (authentication != null && authentication.getPrincipal() instanceof DefaultOAuth2User oauth2User) {
            Map<String, Object> attributes = oauth2User.getAttributes();
            google.setEmail((String) attributes.get("email"));
            google.setName((String) attributes.get("name"));
            google.setPicture((String) attributes.get("picture"));
            google.setUsername((String) attributes.get("sub"));
        }
        return google;
    }

}
