package com.lab.lab7.controllers;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

@Controller
@RequestMapping("mailer")
public class MailerController {
    @Autowired
    JavaMailSender sender;

    @GetMapping("")
    public String mailViewer() {
        return "index";
    }

    @PostMapping("/test-send")
    @ResponseBody
    public String testSend() throws MessagingException {
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
        helper.setTo("crytv778@gmail.com");
        helper.setSubject("test");
        // Nội dung HTML với liên kết
        String htmlContent = "<html><body>"
                + "<p>Mail của bạn đã được gửi đi. Vui lòng nhấp vào liên kết sau:</p>"
                + "<a href='http://localhost:8080/mailer/test?p=testParam'>Đây là liên kết</a>"
                + "</body></html>";
        helper.setText(htmlContent, true);
        sender.send(message);
        return "Gui mail thanh cong";
    }

    @GetMapping("/test")
    @ResponseBody
    public String test(@RequestParam("p") String p) {
        return p;
    }

    @ResponseBody
    @PostMapping("/send")
    public String send(@RequestParam String txtTo, @RequestParam String txtCC, @RequestParam String txtBCC, @RequestParam String txtSubject, @RequestParam String txtContent, @RequestParam("files") MultipartFile[] files) throws MessagingException {
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");

        helper.setTo(txtTo);

        //Tách chuỗi thành mảng CC tại dấu "," và loại có các phần tử trùng nhau bằng Hashset
        String[] listCC = null;
        if (txtCC != null) {
            listCC = txtCC.split(",");
            HashSet<String> setCC = new HashSet<>();
            Collections.addAll(setCC, listCC);
            listCC = setCC.toArray(new String[0]);
            for (String s : listCC) {
                helper.setCc(s);
            }
        }

        //Tách chuỗi thành mảng BCC tại dấu "," và loại có các phần tử trùng nhau bằng Hashset
        String[] listBCC = null;
        if (txtBCC != null) {
            listBCC = txtBCC.split(",");
            HashSet<String> setBCC = new HashSet<>();
            Collections.addAll(setBCC, listBCC);
            listBCC = setBCC.toArray(new String[0]);
            for (String s : listBCC) {
                helper.setBcc(s);
            }
        }
        helper.setSubject(txtSubject);
        helper.setText(txtContent);

        if (files != null) {
            for (MultipartFile file : files) {
                helper.addAttachment(Objects.requireNonNull(file.getOriginalFilename()), file);
            }
        }
        sender.send(message);
        return "<h1>Mail của bạn đã được gửi đi</h1>";
    }

}