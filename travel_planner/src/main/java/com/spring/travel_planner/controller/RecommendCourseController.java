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
		
		service.regionListAction(request, response, model);
		
		return "recommendCourse/regionList";
	}
	
	// 추천 코스 상세 목록 -> 추천코스 목록 모달팝업 창에서 recommendCourseDetail() 호출하므로 상세페이지 호출전에 작성
	@RequestMapping("/recommendCourseDetail.rc")
	public String recommendCourseDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseDetail >>>");
		
		service.RecommendCourseListDetailAction(request, response, model);
		
		return "recommendCourse/recommendCourseDetail";
	}
	
	// 추천 코스 목록
	@RequestMapping("/recommendCourseList.rc")
	public String recommendCourseList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseList >>>");
		
		service.RecommendCourseListAction(request, response, model);
		
		return "recommendCourse/recommendCourseList";
	}
	
}
