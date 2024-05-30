package com.lab.lab7.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
    String from = "duongtridung07@gmail.com";
    String to;
    String[] cc;
    String[] bcc;
    String subject;
    String body;
    List<File> files=new ArrayList<>();

    public MailInfo(String to, String subject, String body) {
        this.to = to;
        this.subject = subject;
        this.body = body;
    }
}
