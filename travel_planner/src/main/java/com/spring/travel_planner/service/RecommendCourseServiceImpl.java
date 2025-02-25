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
	
	// 지역 목록
	@Override
	public void regionListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("RecommendCourseServiceImpl - regionListAction()");
		
		List<RecommendCourseDTO> list = dao.areaList(); 
		
		model.addAttribute("list", list);
	}
	
	// 지역 추천코스 상세 목록
	@Override
	public void RecommendCourseListDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("RecommendCourseServiceImpl - RecommendCourseListDetailAction()");
		
		String tr_course_id = request.getParameter("courseId");
		
		List<RecommendCourseDTO> list = dao.recommendCourseDetailList(Integer.parseInt(tr_course_id)); 
		
		model.addAttribute("list", list);
	}
	
	// 추천코스 목록
	@Override
	public void RecommendCourseListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("RecommendCourseServiceImpl - RecommendCourseListAction()");
		
		int tr_area_id = Integer.parseInt(request.getParameter("area_id"));
		
		List<RecommendCourseDTO> list = dao.recommendCouresList(tr_area_id); 
		
		model.addAttribute("list", list);
		
	}
	
	
}
