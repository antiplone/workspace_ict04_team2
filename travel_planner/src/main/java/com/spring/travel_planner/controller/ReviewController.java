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
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	
	// 후기 등록 화면
	@RequestMapping("/reviewWrite.do")
	public String reviewWrite() {
		logger.info("<<< url -> reviewWrite.do >>>");
		
		return "community/review/reviewWrite";
	}
	
	// 후기 등록 처리
		@RequestMapping("/reviewInsertAction.do")
		public String reviewInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
				throws ServletException, IOException {
			logger.info("<<< url -> reviewInsertAction.do >>>");
			
			service.reviewInsertAction(request, response, model);
			return "community/review/reviewInsertAction";
		}

	// 후기 수정 처리
	@RequestMapping("/reviewUpdateAction.do")
	public String reviewUpdateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		logger.info("<<< url -> reviewUpate.do >>>");
		
		service.reviewUpdateAction(request, response, model);
		return "community/review/reviewUpdateActoin";
	}

	// 후기 상세페이지
	@RequestMapping("/reviewDetail.do")
	public String reviewDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url -> reviewDetail.do >>>");
		
		service.reviewDetailAction(request, response, model);
		return "community/review/reviewDetail";
		
	}
}

