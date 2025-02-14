package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface ReviewService {
	
	// 후기 목록
	public void reviewListAction(HttpServletRequest request, HttpServletResponse response, Model model)
		throws ServletException, IOException;
	
	// 후기 상세페이지
	public void reviewDetailAction(HttpServletRequest request, Model model)
			throws ServletException, IOException;
	
	// 후기 수정처리
	public void reviewUpdateAction(HttpServletRequest request, Model model)
			throws ServletException, IOException;
	
	// 게시글 삭제처리
	public void reviewDeleteAction(HttpServletRequest request, Model model)
			throws ServletException, IOException;
	
	// 게시글 작성처리
	public void reviewInsertAction(HttpServletRequest request, Model model)
			throws ServletException, IOException;

}
