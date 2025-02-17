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

import com.spring.travel_planner.service.ReviewServiceImpl;

@Controller
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewServiceImpl service;
	
	
	// 게시글 목록
	@RequestMapping("/reviewList.do")
	public String reviewList(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		logger.info("<<< url -> reviewList.do >>>");
		
		service.reviewListAction(request, response, model);
		return "community/review/reviewList";
	}
	
	@RequestMapping("/reviewWrite.do")
	public String reviewWrite() {
		logger.info("<<< url -> reviewWrite.do >>>");
		
		return "community/review/reviewWrite";
	}

	// 게시글 상세페이지
	@RequestMapping("/reviewDetail.do")
	public String reviewDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url -> reviewDetail.do >>>");
		
		service.reviewDetailAction(request, model);
		return "community/review/reviewDetail";
		
	}
}
