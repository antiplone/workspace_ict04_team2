package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface LocationService {
	
	// 여행지 메인(기본값 = '전국'리스트)
	public void MainListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	public void guListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
	// 지역 - '구' 선택 시 해당 리스트들 조회
	public void selectListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	// 지역 - 여행지 클릭 시 상세페이지 조회
	public void locationDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
}
