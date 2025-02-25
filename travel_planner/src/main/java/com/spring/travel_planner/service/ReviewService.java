package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ReviewService {
	
	// 후기 목록
	public void reviewListAction(HttpServletRequest request, HttpServletResponse response, Model model)
		throws ServletException, IOException;
	
	// 후기 상세페이지
	public void reviewDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 후기 수정화면 이동
	public void reviewUpdate(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 후기 수정처리
	public void reviewUpdateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 후기 삭제처리
	public void reviewDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 후기 작성처리
	public void reviewInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 조회순으로 후기글 4개만
	public void mainReviewList(Model model) throws ServletException, IOException;

	// [ 후기 ] 댓글 작성 처리
	public void commentAddAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException;

	// [ 후기 ] 댓글 목록 처리
	public void commentListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException;
}
