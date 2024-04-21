package com.lab4.lab4.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ParamService {
    @Autowired
    private HttpServletRequest request;

    /**
     * Đọc chuỗi giá trị của tham số
     *
     * @param name         tên tham số
     * @param defaultValue giá trị mặc định
     * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
     */
    public String getString(String name, String defaultValue) {
        return request.getParameter(name);
    }

    /**
     * Đọc số nguyên giá trị của tham số
     *
     * @param name         tên tham số
     * @param defaultValue giá trị mặc định
     * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
     */


    public int getInt(String name, int defaultValue) {
    }

    /**
     * * Đọc số thực giá trị của tham số
     * * @param name tên tham số
     * * @param defaultValue giá trị mặc định
     * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
     */


    public double getDouble(String name, double defaultValue) {
    }

    /**
     * * Đọc giá trị boolean của tham số
     * * @param name tên tham số
     * * @param defaultValue giá trị mặc định
     * * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
     */


    public boolean getBoolean(String name, boolean defaultValue) {
    }

    /**
     * * Đọc giá trị thời gian của tham số
     * * @param name tên tham số
     * * @param pattern là định dạng thời gian
     * * @return giá trị tham số hoặc null nếu không tồn tại
     * * @throws RuntimeException lỗi sai định dạng
     */


    public Date getDate(String name, String pattern) {
    }

    /**
     * * Lưu file upload vào thư mục
     * * @param file chứa file upload từ client
     * * @param path đường dẫn tính từ webroot
     * * @return đối tượng chứa file đã lưu hoặc null nếu không có file upload
     * * @throws RuntimeException lỗi lưu file
     */


    public File save(MultipartFile file, String path) {
    }


}

