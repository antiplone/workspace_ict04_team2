package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.travel_planner.dao.RecommendCourseDAO;
import com.spring.travel_planner.dto.RecommendCourseDTO;

@Service
public class RecommendCourseServiceImpl implements RecommendCourseService {
	
	@Autowired
	private RecommendCourseDAO dao;
	
	// 여행지역 목록
	@Override
	public void productListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("RecommendCourseServiceImpl - productListAction()");
		
		List<RecommendCourseDTO> list = dao.areaList(); 
		
		model.addAttribute("list", list);
	}
	
	// 여행지역 추천코스 상세페이지
	@Override
	public void RecommendCourseListDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
	}
}
