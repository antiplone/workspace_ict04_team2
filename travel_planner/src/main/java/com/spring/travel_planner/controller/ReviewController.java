package com.spring.travel_planner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@RequestMapping("/reviewList.do")
	private String reviewList() {
		logger.info("<<< url -> reviewList.do >>>");
		
		return "community/review/reviewList";
	}
	
	@RequestMapping("/reviewWrite.do")
	private String reviewWrite() {
		logger.info("<<< url -> reviewWrite.do >>>");
		
		return "community/review/reviewWrite";
	}

	@RequestMapping("/reviewDetail.do")
	private String reviewDetail() {
		logger.info("<<< url -> reviewDetail.do >>>");
		
		return "community/review/reviewDetail";
	}
}
