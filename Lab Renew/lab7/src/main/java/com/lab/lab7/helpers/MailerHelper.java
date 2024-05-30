package com.lab.lab7.helpers;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class MailerHelper {

    public String[] parseStringEmailToArray(String emailString) {
        String[] arrEmail = null;
        if (emailString.length() > 0) {
            emailString = removeSpace(emailString);
            arrEmail = emailString.split(",");
        }
        return arrEmail;
    }

    private String removeSpace(String string) {
        return string.replaceAll(" ", "");
    }

    public File convertMultipartFileToFile(MultipartFile multipartFile) throws IOException {
        //Tạo 1 thư mục tạm thời để chứa file, sau này có thể xóa thư mục tạm thời đó đi
        File convFile = new File(System.getProperty("java.io.tmpdir") + "/" + multipartFile.getOriginalFilename());
        multipartFile.transferTo(convFile);
        return convFile;
    }
}