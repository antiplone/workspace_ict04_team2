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
	
	String viewPage = "";
	
	// 후기 목록
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

	// 후기 수정화면 이동
	@RequestMapping("/reviewUpdate.do")
	public String reviewUpdate(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		logger.info("<<< url -> reviewUpdate.do >>>");
		
		service.reviewUpdate(request, response, model);
		return "community/review/reviewUpdate";
	}
	
	// 후기 수정 처리
	@RequestMapping("/reviewUpdateAction.do")
	public String reviewUpdateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		logger.info("<<< url -> reviewUpdateAction.do >>>");
		
		service.reviewUpdateAction(request, response, model);
		return "community/review/reviewUpdateAction";
	}
		
	// 후기 상세페이지
	@RequestMapping("/reviewDetail.do")
	public String reviewDetail(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url -> reviewDetail.do >>>");
		
		service.reviewDetailAction(request, response, model);
		return "community/review/reviewDetail";
	}
	
	// 후기 삭제 처리
	@RequestMapping("/reviewdeleteAction.do")
	public String reviewdeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url -> reviewdeleteAction.do >>>");
		
		service.reviewDeleteAction(request, response, model);
		
		return "community/review/reviewDeleteAction";
	}
	
	// AJAX가 포함되어 있을 때는 HttpServletResponse(응답)을 써줘야 한다.
	// [ 후기 ] 댓글 작성 처리
	@RequestMapping("/comment_insert.do")
	public String comment_insert(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		logger.info("[URL]   /comment_insert.do");
		
		service.commentAddAction(req, res, model);
		
		return null;
	}
	
	// [ 후기 ] 댓글 목록 처리
	@RequestMapping("/comment_list.do")
	public String comment_list(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		logger.info("[URL]   /comment_list.do");
		
		service.commentListAction(req, res, model);
		
		return "community/review/reviewComment";
	}
}
