package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface NoticeService {
	// 게시글 목록
		public void noticeListAction(HttpServletRequest req, HttpServletResponse res, Model model)
				throws ServletException, IOException ;
		
		// 게시글 상세페이지
		public void noticeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException ;
		
		// 게시글 수정 삭제시 비밀번호 인증
		public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException ;
		
		// 게시글 수정처리
		public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException ;
		
		// 게시글 삭제처리
		public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException ;
		
		// 게시글 작성 처리
		public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
				throws ServletException, IOException ;
		
}
