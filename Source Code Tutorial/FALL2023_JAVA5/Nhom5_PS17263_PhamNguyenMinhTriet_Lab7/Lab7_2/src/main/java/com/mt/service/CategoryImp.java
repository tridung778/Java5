package com.mt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.mt.model.Category;

@Service
public class CategoryImp implements CategoryDAO {
	public static List<Category> list=new ArrayList<>();
	static {
		list.add(new Category(1,"Đồng hồ đeo tay"));
		list.add(new Category(1,"Máy tính xách tay"));
		list.add(new Category(1,"Máy ảnh"));
		list.add(new Category(1,"Điện thoại"));
		list.add(new Category(1,"Nước hoa"));
		list.add(new Category(1,"Nữ trang"));
		list.add(new Category(1,"Nón thời trang"));
		list.add(new Category(1,"Túi xách du lịch"));
	}
	@Override
	public List<Category> findAll() {
		return list;
	}
}
