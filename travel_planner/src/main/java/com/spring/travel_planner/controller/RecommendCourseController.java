package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecommendCourseController {
		
	private static final Logger logger = LoggerFactory.getLogger(RecommendCourseController.class);
	
	@RequestMapping("/regionList.rc")
	public String regionList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => regionList >>>");
		
		return "course/regionList";
	}
	
	@RequestMapping("/selectRegion.rc")
	public String selectRegion(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => selectRegion >>>");
		
		return "course/selectRegion";
	}
	
	@RequestMapping("/recommendCourseList.rc")
	public String recommendCourseList(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseList >>>");
		
		return "course/recommendCourseList";
	}
	
	@RequestMapping("/recommendCourseDetail.rc")
	public String recommendCourseDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException{
		logger.info("<<< url => recommendCourseDetail >>>");
		
		return "course/recommendCourseDetail";
	}
	
}
