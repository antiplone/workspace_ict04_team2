package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.service.RecommendCourseService;

@Controller
public class RecommendCourseController {
		
	private static final Logger logger = LoggerFactory.getLogger(RecommendCourseController.class);
	
	@Autowired
	private RecommendCourseService service;
	
	// 지역 목록
	@RequestMapping("/regionList.rc")
	public String regionList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => regionList >>>");
		
		service.productListAction(request, response, model);
		
		return "recommendCourse/regionList";
	}
	
	// 선택 지역
	@RequestMapping("/selectRegion.rc")
	public String selectRegion(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => selectRegion >>>");
		
		return "recommendCourse/selectRegion";
	}
	
	// 추천 코스 목록
	@RequestMapping("/recommendCourseList.rc")
	public String recommendCourseList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseList >>>");
		
		return "recommendCourse/recommendCourseList";
	}
	
	// 추천 코스 상세페이지
	@RequestMapping("/recommendCourseDetail.rc")
	public String recommendCourseDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseDetail >>>");
		
		return "recommendCourse/recommendCourseDetail";
	}
	
}
