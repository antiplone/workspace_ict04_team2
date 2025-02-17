package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface RecommendCourseService {
	
	// 여행지역 목록
	public void productListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 여행지역 상세페이지
	
	// 여행지역 추천코스 목록
	
	// 여행지역 추천코스 상세페이지
	public void RecommendCourseListDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
}
