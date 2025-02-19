package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface RecommendCourseService {
	
	// 지역 목록
	public void regionListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 지역 상세페이지
	
	// 지역 추천코스 목록
	public void RecommendCourseListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 지역 추천코스 상세페이지
	public void RecommendCourseListDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
}
