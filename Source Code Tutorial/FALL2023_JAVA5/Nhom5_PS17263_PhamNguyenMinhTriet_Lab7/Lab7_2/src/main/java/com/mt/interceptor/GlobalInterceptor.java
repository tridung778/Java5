package com.mt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mt.service.CategoryDAO;


@Service
public class GlobalInterceptor implements HandlerInterceptor {
	@Autowired
	CategoryDAO dao;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setAttribute("uri", request.getRequestURI());
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView mv)
			throws Exception {
		req.setAttribute("categories", dao.findAll());
	}
}
